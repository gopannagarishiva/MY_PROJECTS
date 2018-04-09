#Server
import socket
from Crypto.Cipher import AES
import base64

ip="127.0.1.77"
port=9999

connection=socket.socket()
connection.bind((ip,port))
connection.listen(5)
NewConnection,addr=connection.accept()
while True:
	recieved=str.decode(NewConnection.recv(1024))
	Cap=recieved.upper()
	NewConnection.send(Cap)
NewConnection.close()
connection.close()


