pipeline {
  agent {
    docker {
      args '-v /Users/pawel/.m2:/root/.m2'
      image 'maven:3.3.9-jdk-8'
    }

  }
  stages {
    stage('Initialize') {
      steps {
        sh 'mvn clean'
      }
    }

    stage('Restoredb') {
      steps {
        sh 'ls -l'
      }
    }

    stage('Chrome') {
      steps {
        sh 'mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=chrome'
        junit 'target/surefire-reports/**/*.xml'
      }
    }

    stage('Firefox') {
      steps {
        sh 'mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=firefox'
        junit 'target/surefire-reports/**/*.xml'
      }
    }

  }
}