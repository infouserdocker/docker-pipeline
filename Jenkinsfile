pipeline {
    agent any

    stages {
         stage('Build Docker Image') {
            steps {
                parallel (
                    "IDG ECS Django Web Staging" : {
                       sh 'printenv'
                       sh 'docker build'
              
                    }
                )
            }
        }
    }
}

