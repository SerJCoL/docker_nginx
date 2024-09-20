stage 'Building nginx Container for Docker Hub'
docker.withRegistry("${env.REGISTRY_URL}", "${env.DOCKER_CREDS_ID}") {

    // Set up the container to build
    env.MAINTAINER_NAME = "jayjohnson"
    env.CONTAINER_NAME = "django-nginx"
    env.BUILD_TAG = "testing"

    stage "Building Container"

    def container = docker.build("${env.MAINTAINER_NAME}/${env.CONTAINER_NAME}:${env.BUILD_TAG}", 'nginx')

    // add more tests

    stage "Pushing"
    container.push()

    currentBuild.result = 'SUCCESS'
}
