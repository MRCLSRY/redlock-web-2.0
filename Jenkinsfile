pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build("redlock-web-2.0:${env.BUILD_NUMBER}", ".")
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    docker.run("redlock-web-2.0:${env.BUILD_NUMBER}", ports: '8080:8080')
                }
            }
        }
    }
}
