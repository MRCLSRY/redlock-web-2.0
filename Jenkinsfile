pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('redlock-web-2.0', '--no-cache -f Dockerfile .', '--insecure-registries=myregistrydomain.com:5000')
                    dockerImage.push()
                }
            }
        }
    }
}
