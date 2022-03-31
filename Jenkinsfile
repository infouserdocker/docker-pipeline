pipeline {
    agent any
    environment {
        IDGAU_AWS_ACCESS_KEY_ID     = credentials('IDGAU_AWS_ACCESS_KEY_ID')
        
    }
    stages {
        stage('Example stage 1') {
            steps {
                sh ' echo IDGAU_AWS_ACCESS_KEY_ID'
            }
        }
}

           
