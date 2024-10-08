# Inbound call 
    - Need to trigger from server
    - add server IP in sip proxy address table.
    - currently setup in csiq-dev server
        - cd /home/data/sippTest/
        - sudo ./sipp 3.132.189.237 -i 172.30.10.200  -trace_err -trace_msg -sf uac_inboundCall.xml -aa -m 1 -l 1 -r 2


# Internal call
    - Can do from local machine
    - sudo sipp 3.132.189.237 -i 10.160.12.210 -trace_err -trace_msg -sf uac_1006-1005.xml -aa -m 2 -l 1 -r 2
        - 10.160.12.210  -> local ip of the machine
        - 3.132.189.237  -> Proxy server IP
        - uac_1006-1005.xml  -> xml scenario to be played out.

# Outbound Call
    - Can do from local machine
    - sudo sipp 3.132.189.237 -i 10.160.12.210 -trace_err -trace_msg -sf uac_outboundCall.xml -aa -m 2 -l 1 -r 2
        - 10.160.12.210  -> local ip of the machine
        - 3.132.189.237  -> Proxy server IP
        - uac_outboundCall.xml  -> xml scenario to be played out.



## Notes:
-  Limit the traces to a minimum (usage of -trace_msg, -trace_logs should be limited to scenario debugging only)