pipeline {
    agent {
        docker { image 'nginx:latest' }
    }
    stages {
        stage('Installing Docker') {
            steps {
                sh 'node --version'
            }
        }
    }
}
