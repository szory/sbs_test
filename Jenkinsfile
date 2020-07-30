pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
    }

  }
  stages {
    stage('Initialize') {
      steps {
        sh 'mvn clean'
      }
    }

    stage('Build') {
      steps {
        sh 'mvn clean install'
      }
    }

    stage('Report') {
      steps {
        junit 'target/surefire-reports/**/*.xml'
      }
    }

    stage('RestoreDb') {
      steps {
        sh '''ls -l
'''
      }
    }

  }
}