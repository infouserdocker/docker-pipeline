pipeline {
    agent any

    stages {
         stage('Build Docker Image') {
            steps {
                parallel (
                    "IDG ECS Django Web Staging" : {
                       sh 'printenv'
                       sh 'echo info@201'
                       sh 'sudo -S docker build docker_web_app'
                       sh 'echo info@201'
                    }
                )
            }
        }
    }
}
