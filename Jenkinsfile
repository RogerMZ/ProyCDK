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
        sh '''echo \'docker build -t rogermz/proy-cdk:1.0 .\'
docker build -t rogermz/proy-cdk:1.0 .
docker images'''
      }
    }

  }
}