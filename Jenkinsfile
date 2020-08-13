pipeline {
  agent none
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
      }
    }

    stage('Restoredb') {
      agent any
      steps {
        sh 'docker exec -i mysql1 mysql -uroot -p1234 -s <  /var/jenkins_home/workspace/sbs_test_master/Dump20190914.sql'
      }
    }

    stage('Chrome') {
      agent {
        docker {
          image 'maven:3.3.9-jdk-8'
          args '-v /Users/pawel/.m2:/root/.m2'
        }

      }
      steps {
        script {
          for (int i = 0; i < 5; i++) {
            echo "Testing the ${i} browser"
            sh 'mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=chrome -DincrementVar=${i}'
          }
        }

      }
    }

    stage('Firefox') {
      agent {
        docker {
          args '-v /Users/pawel/.m2:/root/.m2'
          image 'maven:3.3.9-jdk-8'
        }

      }
      steps {
        sh 'mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=firefox'
        junit 'target/surefire-reports/**/*.xml'
      }
    }

  }
}