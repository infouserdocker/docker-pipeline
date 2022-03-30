pipeline {
agent any
stages {
stage('Cloning our Git') {
steps {
git branch: 'main', url: 'https://github.com/infouserdocker/docker-pipeline.git'
sh 'cd /var/lib/jenkins'
 sh 'pwd'
 sh 'ls -la'
 sh 'docker build'
}
 }
}
}
