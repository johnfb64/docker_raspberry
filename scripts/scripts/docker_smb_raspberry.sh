docker run -it -e TZ=America/Bogota \
-v /root/shared/Compartida1:/Compartida1 \
-v /root/shared/Compartida2:/Compartida2 \
-v /root/shared/Compartida3:/Compartida3 \
-p 139:139 -p 445:445 -d dperson/samba -p -u "john;pepe123" \
-s "Compartida1;/Compartida1;yes;yes" \
-s "Compartida2;/Compartida2;yes;yes" \
-s "Compartida3;/Compartida3;yes;yes" \
-g "ntlm auth = yes"





