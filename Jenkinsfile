pipeline {
  agent any
  stages {
    stage('Env&Tools') {
      steps {
        sh 'env'
        sh 'docker --version'
        sh 'ls -ltr'
      }
    }

    stage('Build Dkr') {
      steps {
        sh 'docker build -t rogermz/proy-cdk:1.0 .'
        sh 'docker images'
        dockerNode(image: 'rogermz/proy-cdk')
      }
    }

    stage('Deploy Image') {
      steps {
        sh 'docker login -u rogermz --password-stdin rmz619doc'
        sh 'docker push rogermz/proy-cdk:1.0'
      }
    }

  }
  environment {
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
}