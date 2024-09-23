#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Run Docker') {
            steps {
                script {
                    img = 'node:14'
                    docker. image("$(img}").run('-d -p 9889:80')
                }
            }
        }
    }
}
