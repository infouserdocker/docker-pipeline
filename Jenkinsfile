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
                    sh "chmod 777 Dockerfile"
                    sh "cd /var/lib/jenkins/workspace/new-pipeline/Dockerfile"
                    //wbs = docker.build("${env.IMAGE}")
                    //sh "grep -ir Dockerfile /var/lib"
                    sh "docker build --build-arg  var1=staging -t test-image"
                }
            }
        }
    }
}
