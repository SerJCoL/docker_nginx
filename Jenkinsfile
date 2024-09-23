pipeline {
    agent any

    stages {
        stage('Run Docker') {
            steps {
                script {
                    img = 'nginx'
                    docker. image("${img}").run('-d -p 9889:80 --name web -v ./public-html.html:/usr/share/nginx/html')
                }
            }
        }
    }
}
