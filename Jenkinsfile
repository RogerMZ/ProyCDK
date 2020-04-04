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
        sh '''echo \'docker build -t rogermz/proyectoCDK:1.0\'
sh \'docker push rogermz/proy-cdk:1.0\'
sh \'docker images\''''
      }
    }

  }
}