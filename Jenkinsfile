pipeline {
    agent any
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
                    sh "ls -la"
                    sh "pwd"
                    //wbs = docker.build("${env.IMAGE}")
                    //sh "grep -ir Dockerfile /var/lib"
                    sh "docker build Dockerfile"
                }
            }
        }
    }
}
