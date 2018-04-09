#Making server to busy
import socket

ip='127.0.1.77'
port=9999
attacker=socket.socket()
attacker.connect((ip,port))
