pipeline {
  environment {
    registryCredential = 'dockerhub_id'
    dockerImage = ''
    registry = 'rogermz/proy-cdk'
  }
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
        sh '#docker build -t rogermz/proy-cdk:1.0 .'
        script {
          dockerImage = docker.build registry + ":1.0"
        }

        sh 'docker images'
      }
    }

    stage('Deploy Image') {
      agent any
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }

      }
    }

  }
}
