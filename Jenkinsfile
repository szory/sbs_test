pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args 'v /root/.m2:/root/.m2'
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
        sh '/var/jenkins_home/workspace/sbs_test_master/mysql-docker.sh'
      }
    }

  }
}