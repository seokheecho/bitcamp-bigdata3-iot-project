// AWT IoT의 Gateway에 메시지를 보내는 예제
// => 메시지를 보내는 것을 "발행(publish)"이라고 표현한다.

const awsIot = require('aws-iot-device-sdk');

// 장비목록
const devices = {};

// AWS 서버에 등록된 Things 정보를 바탕으로 장비를 준비시킨다.
const dev01 = awsIot.device({

  //AWS 서버에 Thing을 생성한 후 만든 인증서의 개인키 파일
    keyPath:"/home/ec2-user/vars/aws-iot/dev01/dev01.private.key",

  //AWS 서버에 Thing을 생성한 후 만든 인증서의 사물 인증서 파일
    certPath:"/home/ec2-user/vars/aws-iot/dev01/dev01.cert.pem",

  //AWS 서버에 Thing을 생성한 후 만든 인증서를 검증해 줄 "인증서를 발행한 회사"의 인증서 파일
    caPath:"/home/ec2-user/vars/aws-iot/root-CA.crt",

  // 다른 클라ㅏ이언트와 구분하기 위한 임의의 ID
    clientId:"fbchatbot",

  // AWS에 등록한 Thing을 가리키는 URL.
  // AWS IoT 사물 관리 페이지에서 "상호작용" 메뉴에서
  //HTTPS의 RestAPI를 요청할 때 사용할 Thing의 URL이다.
    host: process.env.DEV01_HOST // AWS

});

// 이 프로그램이 AWS IoT에 등록한 Thing과 연결되었을 때 호출될 메서드 추가
dev01.on('connect', function() {
    // 이 함수를 호출되었다는 것은 AWS IoT의 Thing과 연결되었다는 의미다.
    console.log('AWS IoT의 dev01 장비와 연결 되었음!');
    // 연결에 성공하면 연결된 장비를 목록에 추가한다.
    devices['dev01'] = dev01;

    // 연결되면 'topic_1'이라는 사서함을 구독하겠다고 선언한다.
    // => 즉 지금부터 연결된 Thing의 'topic_1'이라는 사서함에
    //    메시지가 오면 받겠다는 의미다.

    dev01.subscribe('topic_1');
    console.log('topic_1의 사서함 구독 시작')

});

// 구독하기로 설정한 사서함에 메시지가 도착할 때 마다
// AWS IoT 서버에 이 프로그램에 알려준다.
// 그때 호출될 메서드를 추가한다.
dev01.on('message', function(topic, payload) {
    console.log('사서함 메시지 도착');
    console.log('사서함 이름:', topic);
    var dataObj = payload.toString('utf-8')
    var obj = JSON.parse(dataObj)

    var sensor = obj.sensor
    var temp = obj.temp
    var humi = obj.humi
    var dust = obj.dust

// 글로벌 변수에 담아서 사용!
// 센서값을 구분해서 받아야 사서함 'topic_1' 에 들어간 값을 원하는데로(온도면 온도, 습도면 습도, 미세먼지면 미세먼지) 받아올 수 있다.
// 구분을 안하면 'dht' 센서값이 들어올 때 'dust' 값을 호출 하면 'undefined(정의되지 않는 값)' 으로 나온다.
    if (sensor == 'dht') {
        global.temp = obj.temp;
        global.humi = obj.humi;
    } else if (sensor == 'dust') {
        global.dust = obj.dust;
    }


console.log('받은 메시지:', obj);
console.log('-------------------------');

});

// publish 함수 정의  (장비명 'dev01', 사서함 'topic_1', 보낼값 JSON형식{" ": " ",...})
function publish(deviceName, topic, dataObj){
    devices[deviceName].publish(topic, JSON.stringify(dataObj));
}

module.exports = {
    publish
};
