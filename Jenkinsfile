pipeline {
    agent any

    stages {
         stage('Build Docker Image') {
            steps {
                parallel (
                    "IDG ECS Django Web Staging" : {
                       sh 'printenv'
                       sh 'echo info@201'
                       sh 'pwd'
                       sh 'ls -la'
                       sh 'docker build docker-pipeline'
                       
                    }
                )
            }
        }
    }
}

