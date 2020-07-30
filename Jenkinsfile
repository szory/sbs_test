pipeline {
  agent {
    docker {
      image 'maven:3.3.9-jdk-8'
      args '-v /Users/pawel/.m2:/root/.m2'
    }

  }
  stages {
    stage('Initialize') {
      agent {
        docker {
          image 'maven:3.3.9-jdk-8'
          args '-v /Users/pawel/.m2:/root/.m2'
        }

      }
      steps {
        sh 'mvn clean'
        sh '''docker exec -i mysql1 mysql -uroot -p1234 -s < /var/jenkins_home/workspace/sbs_test_master/Dump20190914.sql
'''
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