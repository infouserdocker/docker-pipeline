pipeline {
  agent {
    node {
      label 'my-defined-label'
      customWorkspace '/docker-pipeline'
    }
  }
  stages {
    stage('Example Build') {
      steps {
        sh 'docker build'
      }
    }
  }
}
