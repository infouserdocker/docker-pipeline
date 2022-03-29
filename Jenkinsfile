pipeline {
    agent{
        label 'linux'
    }
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Container') {
            steps {
                script {
                    sh "ls -ltr"
                    sh "pwd"
                    //wbs = docker.build("${env.IMAGE}")
                }
            }
        }
