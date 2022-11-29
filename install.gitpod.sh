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


# if [[ -e gitpod-demo ]]; then
#   cd gitpod-demo
#   mvn clean install
#   echo "Gitpod demo mvn clean installed..."
#   cd ..
# fi


sudo apt-get update -y
sudo apt-get install maven -y
cd gitpod-demo && mvn clean install -DskipTests
docker-compose up -d 

# if [[ -e "gitpod-react" ]]; then
#   cd gitpod-react
#   npm install
#   npm start
#   echo "Gitpod react started..."
#   cd ..
# fi

# echo "Script complete"