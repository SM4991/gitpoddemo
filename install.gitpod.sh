echo "Welcome to the installation script for Gitpod"

if [ -x "$(command -v docker)" ]; then
    echo "Docker already available"
    echo ""
else
    echo "Installing Docker"
    echo ""
    #  Install Docker
    curl -fsSL https://get.docker.com -o get-docker.sh
fi

if [ -x "$(command -v docker)" ]; then
    echo "Docker Compose already available"
    echo ""
else
    echo "Installing docker-compose"
    echo ""
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi


# if [[ -e gitpod-react ]]; then
#   cd gitpod-react
#   # Replace transport socker url in env
#   uciWebChannelBaseURL=${GITPOD_WORKSPACE_URL:-default_value}
#   uciWebChannelBaseURL="REACT_APP_TRANSPORT_SOCKET_URL=wss://3005-${uciWebChannelBaseURL:8}"
#   sed -i "3s|^.*$|$uciWebChannelBaseURL|" .env
#   yarn install
#   yarn build
#   cd ..
# else 
#   cp .env-uci-web-channel uci-web-channel/.env
#   cd uci-web-channel
#   # Replace transport socker url in env
#   uciWebChannelBaseURL=${GITPOD_WORKSPACE_URL:-default_value}
#   uciWebChannelBaseURL="REACT_APP_TRANSPORT_SOCKET_URL=wss://3005-${uciWebChannelBaseURL:8}"
#   sed -i "3s|^.*$|$uciWebChannelBaseURL|" .env
#   yarn install
#   yarn build
#   cd ..
# fi