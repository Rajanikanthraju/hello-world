pipeline {
    agent none
      stages {
            stage('Build') {
            agent { label 'DOCKER' }
            steps('Docker build') {
                
                sh 'docker build --no-cache -t rajanikanthraju/hello:${BUILD_ID} .'
                                  }
              }
      
    }
}
