REQUEST=$1
COMMAND=$(echo $REQUEST | awk '{print $1}' | tr '[:upper:]' '[:lower:]')
OPTIONS=$(echo $REQUEST | cut -d " " -f2- | sed 's/https\?:\/\///g')
USER=$2


if [ $COMMAND = "jwt" ]; then
	response=`curl -X POST -H "Content-Type: application/json" -d "{\"username\":\"$AUTH_USER\", \"password\":\"$AUTH_PASSWORD\"}" "https://nis1.alnaghi.com:7506/AuthenticationService/rest/auth/"`
	echo "$response" 
else 
	echo "Ayoko nga. Mali2 ka naman."
fi