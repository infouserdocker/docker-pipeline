pipeline {
    agent any
    environment {
        IDGAU_AWS_ACCESS_KEY_ID=credentials('IDGAU_AWS_ACCESS_KEY_ID')
        
    }
    stages {
        stage('Example stage 1') {
            steps {
                   sh 'printenv'
                   sh 'ls -la'
                   sh 'cd /home/vishal/python_chron_error/docker'
                   sh 'printenv'
                   sh 'docker build /home/vishal/python_chron_error/docker --build-arg var1=$IDGAU_AWS_ACCESS_KEY_ID'

            }
        }
}
}
