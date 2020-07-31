pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-u root'
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