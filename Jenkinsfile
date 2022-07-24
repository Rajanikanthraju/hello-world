pipeline {
    agent none
      stages {
            stage('Build') {
            agent { label 'DOCKER' }
            steps('Docker build') {
                
                sh 'docker build -t rajanikanthraju/hello:${BUILD_ID} .'
                                  }
              }
      
    }
}
