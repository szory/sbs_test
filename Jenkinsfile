pipeline {
  agent {
    docker {
      image 'maven:3.3-jdk-8'
      args '-v /Users/pawel/.m2:/root/.m2'
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