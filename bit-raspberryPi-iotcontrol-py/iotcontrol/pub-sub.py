# AWS IoT
from AWSIoTPythonSDK.MQTTLib import AWSIoTMQTTClient
import logging
import time
import argparse
import json
import humidifier_api as humidifier
import ventilator_api as ventilator
import serial
import time

def customCallback(client, userdata, message):
    print("메시지를 수신하였습니다. \n")
    print("사서함 이름: ")
    print(message.topic)
    print("메시지 내용: ")
    #print(message.payload)
    # 사서함에서 받은 Json 문자열을 객체로 변환
    dict = json.loads(message.payload.decode('UTF-8'))
    if dict['control'] == 'humidifier':
        if dict['value'] == 'on':
            '''
            **serial 포트로 아두이노 연결했을 때 사용
            ser = serial.Serial('/dev/ttyACM0') # 시리얼 포트를 준비한다.
            time.sleep(2) # 장비와 연결될 시간을 확보한다.
            print("실행 완료!")
            ser.write(b'1')
            '''
            humidifier.onHumidifier(True)

        else :
            '''
            **serial 포트로 아두이노 연결했을 때 사용
            ser = serial.Serial('/dev/ttyACM0') # 시리얼 포트를 준비한다.
            time.sleep(2) # 장비와 연결될 시간을 확보한다.
            print("실행 완료!")
            ser.write(b'0')
            '''
            humidifier.onHumidifier(False)

    elif dict['control'] == 'ventilator':
        if dict['value'] == 'on':
            ventilator.onVentilator(True)
        else :
            ventilator.onVentilator(False)


host = "a7ursajm7f77df.iot.ap-northeast-2.amazonaws.com"
rootCAPath = "../root-CA.crt"
certificatePath = "../dev01.cert.pem"
privateKeyPath = "../dev01.private.key"
useWebsocket = False
clientId = "client2"
topic = "topic_2"

# 실행하면서 로그를 남기기 위한 설정
logger = logging.getLogger("AWSIoTPythonSDK.core")
logger.setLevel(logging.DEBUG)
streamHandler = logging.StreamHandler()
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
streamHandler.setFormatter(formatter)
logger.addHandler(streamHandler)

# AWSIoTMQTTClient 초기화
myAWSIoTMQTTClient = AWSIoTMQTTClient(clientId)
myAWSIoTMQTTClient.configureEndpoint(host, 8883)
myAWSIoTMQTTClient.configureCredentials(rootCAPath, privateKeyPath, certificatePath)

# AWSIoTMQTTClient 연결에 대한 제어 정보 설정
myAWSIoTMQTTClient.configureAutoReconnectBackoffTime(1, 32, 20)
myAWSIoTMQTTClient.configureOfflinePublishQueueing(-1)  # Infinite offline Publish queueing
myAWSIoTMQTTClient.configureDrainingFrequency(2)  # Draining: 2 Hz
myAWSIoTMQTTClient.configureConnectDisconnectTimeout(10)  # 10 sec
myAWSIoTMQTTClient.configureMQTTOperationTimeout(5)  # 5 sec

# AWS IoT에 등록된 Thing과 연결
myAWSIoTMQTTClient.connect()
print("connect! \n")

# AWS IoT의 Thing의 'topic_2' 사서함을 구독하겠다고 선언
# 메시지를 받으면 customCallback 함수가 호출될 것이다.
myAWSIoTMQTTClient.subscribe(topic, 1, customCallback)
