import socket
import sys
import binascii
import time
import requests
import json
#import exceptions
import datetime
from datetime import timedelta
import logging
import socket
import sys
import binascii
import time
import requests
import json
#import exceptions
import datetime
from datetime import timedelta
import logging
import base64
import hashlib
from Crypto.Cipher import AES
from Crypto import Random
import logging.handlers

date = datetime.date.today()

BLOCK_SIZE = 16
pad = lambda s: s + (BLOCK_SIZE - len(s) % BLOCK_SIZE) * chr(BLOCK_SIZE - len(s) % BLOCK_SIZE)
unpad = lambda s: s[:-ord(s[len(s) - 1:])]

password = "aSaAmAnCaPiHnNlAAL"

telepass = 0 #DEFINE FLAG MODE FOR TELEPASS HANDLING


def encrypt(raw, password):
    private_key = hashlib.sha256(password.encode("utf-8")).digest()
    raw = pad(raw)
    iv = Random.new().read(AES.block_size)
    cipher = AES.new(private_key, AES.MODE_CBC, iv)
    return base64.b64encode(iv + cipher.encrypt(raw))

log_file_name = 'log/TimedRotatingFileHandler.log'
logging_level = logging.DEBUG
# set TimedRotatingFileHandler for root
formatter = logging.Formatter('%(asctime)s %(name)s %(levelname)s %(message)s')
# use very short interval for this example, typical 'when' would be 'midnight' and no explicit interval
handler = logging.handlers.TimedRotatingFileHandler(log_file_name, when="midnight", interval=0, backupCount=10)
handler.setFormatter(formatter)
logger = logging.getLogger() # or pass string to give it a name
logger.addHandler(handler)
logger.setLevel(logging_level)

while 1: #------ Overall loop for execution
  while 1:
    try:
      getNet = requests.get("http://127.0.0.1:4000/v1/")
      if(getNet.status_code==200):
          print ("Network found")
          break
    except requests.exceptions.ConnectionError:
        print ("No network")
        time.sleep(1)
        continue
        
  #----- LOCAL CONFIG SETTINGS
#   local_config_url="http://127.0.0.1:8000/v1/online_config/"
  #local_config_url="https://733b2495-0c01-400c-981b-628f0168a78a.mock.pstmn.io/config/"
#   locreq = requests.get(local_config_url)
#   config_json = json.loads(locreq.content.decode('utf-8'))
  #print (config_json[0]['is_vms'])

  #----- DEVICE DETAILS SETTINGS for RFID
#   device_detail_url = "http://127.0.0.1:8000/v1/device_feed/"
  #device_detail_url = "https://733b2495-0c01-400c-981b-628f0168a78a.mock.pstmn.io/device_detail"
#   locrfid = requests.get(device_detail_url)
  #locrfid = requests.post(device_detail_url, data={"device_type": "rfid"})
#   device_json= json.loads(locrfid.content.decode('utf-8'))
#   #print (device_json)"https://api.apcoaflow.com/",

  
  input1 = ""
  input2 = ""
  nbrIP=0
  tag=""
  st=""
  count = 0
  conf=""
  delimit=0
  base_url = 'http://127.0.0.1:4000/'
  nbrIP = 1
  media_ip_address = '10.170.95.125'

  
  media_port = 1101

#   print('--------------base url test------------')
#   print(base_url)
#   print('--------------base url test------------')

  def tag_txn(tag_id, prefix, hex_var): #-------------------------- tag query code, here the api request gets triggered
      print (tag_id + " "+ prefix) #------------------------ for debugging
      if  hex_var == "True":
          tag_id = int(tag_id, 16);
      try:
          r = requests.post(base_url+"v1/event_trigger/", data={"identifier": tag_id, "prefix":prefix})
          time.sleep(0.15)
          #return True. -------------------------------- DO NOT TOUCH THIS
          print (r.content)
          print (r.status_code)
          print (r)
      except Exception as e:
        print (e)

  if nbrIP > 0:
      try:
          logging.debug("CODE STARTED-----------------------------------------------------------------------")
          print("starting up........")
          sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
          server_address = media_ip_address
          port = media_port
          print(server_address)
          print(port)
          sock.bind((server_address,port))
          sock.listen(10)
          print('-------start of while--------')

          while 1:
                  print('------- inside the while-----------')
                  (connection, client_address) = sock.accept()
                  print (datetime.datetime.now())
                  print ('connection from', client_address)
                  data = connection.recv(1024)
                  connection.close()
                  tag =  (data.decode("utf-8")) # USING ++ AS DELIMITER BETWEEN NUMBER PLATE AND CONFIDENCE LEVEL
                  delimit =  (tag.find("++"))
                  conf=tag[(delimit+2):]
                  tag = tag[:delimit]
                  #print (tag)
                  #print (conf()
                  #print (tag, client_address[0])
                  logging.debug("Tag received {} from {}".format(encrypt(tag,password), client_address[0]))
                  count =0
                  #print (client_address[0])
                  st = tag_txn(tag, client_address[0],"False")
                  if st==True:
                      print ("Call Done")
                      tag=""
                      i =0
                      if data:
                          #print ('sending data back to the client')
                          connection.sendall(data)
                          logging.debug("TXN Done-----------------")
                      else:
                          #print ('no more data from', client_address)
                          break
          print('-------end of while--------')
      except IndexError:
          continue
      except NameError:
          continue
      except OSError as Argument:
          if (Argument.args[0]==48):
              count = count + 1
              logging.debug("Port already occupied, waiting! {}".format(count))
          else:
              logging.debug("Some other error {}".format(Argument.args[0]))
          time.sleep(1)
          continue
      except:
          continue #------------ Overall exception handler
      finally:
          # Clean up the connection
          logging.debug("CODE ENDED------------------------------------------------------------------------------")


