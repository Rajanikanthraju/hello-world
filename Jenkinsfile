pipeline {
    agent any
    triggers { pollSCM '*/5 * * * *' }
    stages {
        stage('source code') {
            agent { label 'DOCKER' }
            steps('Git Clone') {
                git branch: 'master',
                      url: 'https://github.com/Rajanikanthraju/hello-world.git'
                       }
              }
         stage('Build') {
            agent { label 'DOCKER' }
            steps('Docker build') {
                
                sh 'docker build -t rajanikanthraju/hello:1.2 .'
                                  }
              }
        
        stage('kube test') {
            agent { label 'KUBE' }
            steps {
               
              sh 'kubectl version --client --output=yaml'
            }
        }
        
    }
