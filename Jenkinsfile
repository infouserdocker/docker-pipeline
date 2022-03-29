node {    
      def app     
      stage('Clone repository') {               
            workspace = env.WORKSPACE
            checkout scm
            echo "Current workspace is $WORKSPACE"
      }     
      stage('Build image') {         
       
            app = docker.build("test/test")    
       }     
}
