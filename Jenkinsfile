pipeline {
  agent any
  stages {
    stage('Initialize') {
      agent any
      steps {
        sh 'docker exec -i mysql1 mysql -uroot -p1234 -s <  /var/jenkins_home/workspace/sbs_test_master/Dump20190914.sql'
      }
    }

    stage('Build') {
      agent {
        docker {
          args '-v /Users/pawel/.m2:/root/.m2'
          image 'maven:3.3.9-jdk-8'
        }

      }
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