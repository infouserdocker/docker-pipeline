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
                       sh 'cd /home/vishal/python_chron_error/docker'
                       sh 'printenv'
                       sh 'docker build /home/vishal/python_chron_error/docker --build-arg var1=$IDGAU_AWS_ACCESS_KEY_ID'
                       //sh 'docker build docker-pipeline'
                      
                       
                    }
                )
            }
        }
    }
}

