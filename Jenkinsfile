  pipeline {
  agent {
    docker {
      image 'alpine:3.7'
      args '-v $HOME/src:/src'
    }
  }
  stages {
    stage('Build') {
      steps {
      sh 'cd /src ; ./run_build.sh'
      }
    }
  }
}
