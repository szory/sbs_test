pipeline {
  agent {
    docker {
      image 'maven:3.3.9-jdk-8'
      args '-v /Users/pawel/.m2:/root/.m2'
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
        sh 'mvn clean test'
      }
    }

    stage('Report') {
      steps {
        junit 'target/surefire-reports/**/*.xml'
      }
    }

  }
}