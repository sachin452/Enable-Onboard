import socket
import sys
import binascii
import time
#import serial
import requests
import json
#import exceptions
import datetime
from datetime import timedelta
import logging
date = datetime.date.today()
logging.basicConfig(
    filename="log/"+str(date),
    level=logging.DEBUG,
    format="%(asctime)s:%(levelname)s:%(message)s"
    )

while 1: #------ Overall loop for execution
    while 1:
        try:
            getNet = requests.get("http://0.0.0.0:4000/v1/")
            if(getNet.status_code==200):
                print ("Network found")
                break
        except requests.exceptions.ConnectionError:
            print ("No network")
            time.sleep(1)
            continue

    input1 = ""
    input2 = ""
    nbrIP=0
    str1=""
    str2=""
    str3=""
    tag=""
    st=""
    count = 0
    base_url ="http://0.0.0.0:4000" #config_json['config_data'][0]['backend_host_url']


    def tag_txn(tag_id, tag_type, hex_var): #-------------------------- tag query code, here the api request gets triggered
        print (tag_id + " "+ tag_type) #------------------------ for debugging
        if  hex_var == "True":
            tag_id = int(tag_id, 16)
        try:
            if tag_id != "313131":
                r = requests.post(base_url+"/v1/event_trigger/", data={"identifier": tag_id, "prefix":tag_type}, timeout=5)
                time.sleep(0.15)
                #return True. -------------------------------- DO NOT TOUCH THIS
                print (r.content)
                print (r.status_code)
                print (r)
            else:
                print ("Sock Ping")
        except Exception as e:
            print (e)

    nbrIP=1
    if nbrIP > 0:
        try:
            logging.debug("CODE STARTED---------------------------------------------------------------------------")
            print("starting up........")
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            server_address = "192.168.0.56"
            port = 1101
            #print ('starting up on "%s", "%d"') % (server_address,port)
            sock.bind((server_address,port))
            sock.listen(3)
            while 1:
                    (connection, client_address) = sock.accept()
                    #print ('connection from', client_address)
                    data = connection.recv(1024)
                    connection.close()
                    i = 0
                    tag=""
                    #print (len(data))
                    while i < 8:
                        str1=""
                        #print (hex(data[i]))
                        str1 = str(hex(data[i]))
                        #print (str1)
                        #print (len(str1))
                        if (len(str1)) < 4:
                            #print ("Here")
                            str1 = str1[:2]+'0'+str1[2:]
                        #print (len(str1))
                        #print (str1)
                        #str2  = str2 + str1
                        #if i > 3 and i<16:
                        tag = tag + str1
                        str1 = ""
                        i = i+1
                    i =0
                    #str3 = str2.replace('0x','')
                    tag = tag.replace('0x','')
                    tag = tag.upper()
                    tag = tag[10:]
                    print (tag, client_address[0])
                    logging.debug("Tag received {} from {}".format(tag, client_address[0]))
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
