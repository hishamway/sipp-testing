# Inbound call 
    - Need to trigger from server
    - add server IP in sip proxy address table.


# Internal call
    - Can do from local machine
    - sudo sipp 3.132.189.237 -i 10.160.12.210 -trace_err -trace_msg -sf uac_1006-1005.xml -aa -m 2 -l 1 -r 2
        - 10.160.12.210  -> local ip of the machine
        - 3.132.189.237  -> Proxy server IP
        - uac_1006-1005.xml  -> xml scenario to be played out.

# Outbound Call
    - 