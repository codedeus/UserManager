if [[ $(which docker) && $(docker --version) ]]; then
    echo "docker is installed"
	# variables defined in .env will be exported into this script's environment:
	# Let's populate the variables in our compose file template,
	set -a
	. ./.env

	# then deploy it!

	cat docker-compose.yml | envsubst | docker-compose up --build
  else
    echo "Install docker"

fi









