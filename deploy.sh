docker --version
docker images
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag cypress $DOCKER_TEAM/cypress:latest
docker push $DOCKER_TEAM/cypress:latest