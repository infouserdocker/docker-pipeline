pipeline {
agent any
stages {
stage('Cloning our Git') {
steps {
git branch: 'main', url: 'https://github.com/infouserdocker/docker-pipeline.git'
sh 'cd /home'
 sh 'docker build'
}
 }
}
}
