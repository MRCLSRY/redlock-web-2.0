pipeline {
  agent any
  stages {
    stage('Prune Docker data') {
      steps {
        script {
          if (fileExists('docker-compose.yml')) {
            echo 'docker-compose.yml found'
          } else {
            error 'docker-compose.yml not found'
          }
        }
      }
    }
    stage('Start container') {
      steps {
        script {
          if (fileExists('docker-compose.yml')) {
            echo 'docker-compose.yml found'
          } else {
            error 'docker-compose.yml not found'
          }
        }
      }
    }
    stage('Run tests against the container') {
      steps {
        script {
          if (fileExists('docker-compose.yml')) {
            echo 'docker-compose.yml found'
          } else {
            error 'docker-compose.yml not found'
          }
        }
      }
    }
  }
}