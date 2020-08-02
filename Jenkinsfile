pipeline {
  agent any
  stages {
    stage('Initialize') {
      steps {
        sh 'docker exec -i mysql1 mysql -uroot -p1234 -s <  /var/jenkins_home/workspace/sbs_test_master/Dump20190914.sql'
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