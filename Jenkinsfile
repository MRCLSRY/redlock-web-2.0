pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Check Dockerfile') {
            steps {
                script {
                    def dockerfileExists = fileExists('Dockerfile')

                    if (dockerfileExists) {
                        echo "Dockerfile exists"
                    } else {
                        error "No Dockerfile found"
                    }
                }
            }
        }
    }
}
