pipeline { 
    agent any
    stages {     
        stage ("Git Checkout"){ 
            steps {
            script {
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: "main"]],
                        doGenerateSubmoduleConfigurations: false,
                        extensions: [[
                            $class: 'RelativeTargetDirectory',
                            relativeTargetDir: "/"
                        ]],
                        submoduleCfg: [],
                        userRemoteConfigs: [[
                            credentialsId: 'jenkinsCredentialsId',
                            url: 'https://github.com/infouserdocker/docker-pipeline'
                        ]]
                    ])
                
                }
            }
        } 
    }
}
