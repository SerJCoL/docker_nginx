pipeline {
    agent any

    stages {
        stage('Run Docker') {
            steps {
                script {
                    img = 'nginx'
                    docker. image("${img}").run('-d -p 9889:80 --name web -v index.html:/usr/share/nginx/html')
                }
            }
        }
        stage('Stop') {
            steps {
                echo 'Proccessing...'
                sh 'docker stop $(docker ps -a -q)'
            }
		}
        stage('Delete container') {
            steps {
                echo 'Deleting...'
                sh 'docker container rm $(docker ps -a -q)'
            }
	}
    }
}
