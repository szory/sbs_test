pipeline {
  agent {
    docker {
      image 'maven:3.3.9-jdk-8'
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