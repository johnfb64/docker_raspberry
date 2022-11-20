#!/bin/bash
docker run -it -e TZ=America/Bogota \
-v /root/shared/Compartida1:/Compartida1:rw \
-v /root/shared/Compartida2:/Compartida2:rw \
-v /root/shared/Compartida3:/Compartida3:rw \
-p 139:139 -p 445:445 -d dperson/samba -p -u "john;pepe123" \
-s "Compartida1;/Compartida1;yes;no" \
-s "Compartida2;/Compartida2;yes;no" \
-s "Compartida3;/Compartida3;yes;no" \
-g "ntlm auth = yes"
