pipeline {
    agent any
    
    stages {
        stage('Build and Deploy') {
            steps {
                // clone repository
                git 'https://github.com/MRCLSRY/redlock-web-2.0.git'
                
                // install docker-compose
                sh 'curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose'
                sh 'chmod +x /usr/local/bin/docker-compose'
                
                // build and run docker-compose
                sh 'docker-compose build'
                sh 'docker-compose up -d'
            }
        }
    }
}
