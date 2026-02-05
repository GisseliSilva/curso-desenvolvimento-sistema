import paho.mqtt.client as mqtt
import time

#configurações do broker 
broker = "c839201cc9bf44fba92dad94b486e37e.s1.eu.hivemq.cloud"
port = 8883
topic = "teste/mqtt"

#função para quando o cliente receber msg do broker 
def on_message(client, userdata, message):
    print(f"Mensagem recebida no tópico {message.topic}: {str(message.payload.decode('utf-8'))}")


#Criar cliente MQTT
client = mqtt.Cliente(mqtt.CallbackAPIVersion.VERSION1, client_id = "ClientePython")

#configurar callback 
client.connect(broker, port)

#Assinatura de tópico
client.subscribe(topic)

#publicar mensagens a cada 5 segundos 
try:
    while True:
        msg = "Olá MQTT com Python"
        client.publish(topic,msg)
        print(f"Mensagem publicada: {msg}")
        time.sleep(5)
except KeyboardInterrupt:
    print("Saindo...")
finally:
    client.loop_stop()
    client.disconnect()