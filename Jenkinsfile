pipeline {
  agent {
    docker {
      image 'openjdk:7u181-jre'
    }

  }
  stages {
    stage('Initialize') {
      steps {
        sh 'docker ps'
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

  }
}