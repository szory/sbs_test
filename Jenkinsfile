pipeline {
  agent {
    docker {
      args '-v /Users/pawel/.m2:/root/.m2'
      image 'maven:3-alpine'
    }

  }
  stages {
    stage('Initialize') {
      steps {
        sh '/var/jenkins_home/workspace/sbs_test_master/mysql-docker.sh'
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