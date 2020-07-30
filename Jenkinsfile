pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
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
      agent {
        docker {
          image 'maven:3-alpine'
          args '-u root'
        }

      }
      steps {
        sh '''docker exec -i mysql1 mysql -uroot -p1234 -s < /var/jenkins_home/workspace/sbs_test_master/Dump20190914.sql
'''
      }
    }

  }
}