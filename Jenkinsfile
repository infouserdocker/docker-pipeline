pipeline {
    agent any
    environment {
        IDGAU_AWS_ACCESS_KEY_ID     = credentials('IDGAU_AWS_ACCESS_KEY_ID')
        echo '$IDGAU_AWS_ACCESS_KEY_ID'
    }
    stages {
        stage('Example stage 1') {
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
                       sh 'docker build docker-pipeline'

            }
        }
        
    }
}
}
           
