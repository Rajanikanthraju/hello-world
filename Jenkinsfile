pipeline {
    agent any
      stages {
        stage('source code') {
            agent { label 'DOCKER' }
            steps('Git Clone') {
                git branch: 'master',
                      url: 'https://github.com/Rajanikanthraju/hello-world.git'
                       }
              }
        stage('Complie and build') {
            agent { label 'DOCKER' }
            steps('Building war file') {
                sh script: 'mvn clean package'
                       }
              }
      
    }
}
