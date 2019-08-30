import sched, time
import json, requests
import sys

from datetime import datetime
from pytz import timezone

# could be sync and batch, just change the name , everything will follow.
apiName = "heartbeat"

# url to put a http connectio to
baseUrl = "http://localhost:8000/v1"
#port = 8000
firstRequestUrl = "/config"
secondRequestUrl = "/healthcheck/"

#baseUrl = "e306c5e7-194d-469c-9114-ad76452a27dd.mock.pstmn.io"
#argUrl = "/local_config"
# if the flag comes true than make a request to this second url
# secondUrl = 'www.google.com'

# time(in seconds) to wait if connection to api is not Ok
defaultWaitTime = 6

# defualt Priority as only one task will be there
defaultPriority = 1

# success code, in case you get the connection established successfully
successCodeLower = 200
successCodeUpper = 299 

# the response of http request comes in json where by default 0 is the index for getting the json data
jsonIndex = 0

#intialise a schedular
schedular = sched.scheduler(time.time, time.sleep)


# json indexes to be checked
apiFlag = apiName + '_api'
apitimer = apiName + '_api_interval'

# various log messages that has to be gone into log file
startedSchedule : "Start a new Schedule at time = "

httpConnectionMessage = "HTTP connection setup with Url = "

httpRequestSuccessMessage = "'GET' request to URL = "

httpResponseStatus = "HTTP Response came with Status = "

secondRequestSuccessMessage = "Able to successfully make Get request to second url = "

apiResponseFlagMessage = apiName.capitalize() + "_Api flag = "

apiTimerMessage = apiName.capitalize () + "_Api Timer = "

anotherTaskMessage = "Another Task Scheduled with New Delay = "

anotherTaskDefaultMessage = "Another Task Scheduled with New Delay = "

defaultTaskMessage = "Task Scheduled with Default Delay = "

exceptionCame = "Code failed and returned with exception = "

failMessage = "FAIL    :"
successMessage = "SUCCESS :"
outputMessage = "OUTPUT  :"


def LogMessage ( startSpace, message, result, Flag ):
    Message = Flag + startSpace + message + result  
    print (Message)


# function to get local timer
def GetLocalTime ( ):
    format = "%Y-%m-%d %H:%M:%S %Z%z"

    # Current time in UTC
    now_utc = datetime.now(timezone('UTC'))
    

    # Convert to Asia/Kolkata time zone and print it
    now_asia = now_utc.astimezone(timezone('Asia/Kolkata'))
    print ("")
    print ("")
    print (now_asia.strftime(format))




# this is an exception catching check sync so that we get message when it crashes
def ExceptionSafeCheck ( sc ):
    # run the unsafe checksync in try catch blocks so that exceptions can be caught
    try:
        GetLocalTime () 
        Check( sc ) 
    except:

        e = sys.exc_info()[0]
        LogMessage ("    ", exceptionCame , str(e) , failMessage )
       #schedular.enter(defaultWaitTime, defaultPriority, ExceptionSafeCheck, (sc,))
       #LogMessage ("    ", defaultTaskMessage, str(defaultWaitTime), successMessage)
       

# basic check sync function
def Check( sc ): 
   
    # GET request to http server
    first_request = requests.get( baseUrl + firstRequestUrl )

    # log that you were able to make request successfully
    LogMessage( "   ", httpRequestSuccessMessage, baseUrl + firstRequestUrl , successMessage )

    # get the response data that has come

    # if request seems ok else wait for default time and run this function again
    if first_request.status_code == requests.codes.ok:
        # log this event that you got a valid status code
        LogMessage ("       ", httpResponseStatus, str(first_request.status_code), outputMessage)

        # get the data as json
        data = first_request.json( )
        
        # since the data is a list and the first element there is the required data dictionary, here jsonIndex = 0
        flag = data[jsonIndex][apiFlag]
        timer = data[jsonIndex][apitimer]

        # log this as output messages
        LogMessage ("           ", apiResponseFlagMessage, str (flag) , outputMessage )
        LogMessage ("           ", apiTimerMessage, str (timer) , outputMessage )

        # if the flag value that has come to you is true.
        if flag == True:           
            #===============================================================================
            # call other api
            # example 
            # http connection and request to second url  
            # note this is just an example
            second_request = requests.get( baseUrl + secondRequestUrl  )
            
            if second_request.status_code == requests.codes.ok :
                LogMessage("                ", secondRequestSuccessMessage, baseUrl + secondRequestUrl, successMessage )
            
                # you try doing some other checks and else.
            # put code for hitting other api
            #===============================================================================
            
            # if this call was successful than, schedule other task
            if (timer > defaultWaitTime):
                schedular.enter(timer, defaultPriority, ExceptionSafeCheck, (sc,))
                LogMessage ("               ", anotherTaskMessage , str(timer) , successMessage)
            else:

                schedular.enter(defaultWaitTime, defaultPriority, ExceptionSafeCheck, (sc,))
                LogMessage ("               ", anotherTaskDefaultMessage , str(defaultWaitTime) , successMessage)
        else:

            schedular.enter(defaultWaitTime, defaultPriority, ExceptionSafeCheck, (sc,))
            LogMessage("            ", defaultTaskMessage, str(defaultWaitTime), successMessage )
    
    else:

        # if the request is failed , just schedule other task
        schedular.enter(defaultWaitTime, defaultPriority, ExceptionSafeCheck, (sc,))
        LogMessage("        ", defaultTaskMessage, str(defaultWaitTime), successMessage )


# schedule a simple task that makes an Http connection and request
print('run heartbeat')
schedular.enter(1, defaultPriority, ExceptionSafeCheck, (schedular,))
schedular.run()

