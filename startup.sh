#!/bin/bash
read -s -p "admin password: " password
echo
export ADMIN_PASSWORD=$password

read -p "slack url: " slackurl
export SLACK_URL=$slackurl

echo "  ____   _____  _____ ";
echo " |  _ \ / ____|/ ____|";
echo " | |_) | |    | (___  ";
echo " |  _ <| |     \___ \ ";
echo " | |_) | |____ ____) |";
echo " |____/ \_____|_____/ ";
echo "                      ";
echo "                      ";
echo "Starting up swarmprom..."
echo ""

docker stack deploy -c docker-compose.yml monitor
