pipeline {
    agent {
        dockerfile true
    }
    environment {
        DOCKER_IMAGE = 'flask_app'
        DOCKER_TAG = 'latest'
        REGISTRY_CREDENTIALS = 'flask_credential'
        DOCKER_REGISTRY = 'kienaya'
    }
    stages {
        stage('test') {
            steps {
                sh 'pytest tests/tests_app.py'
            }
        }
        stage('Checkout') {
            steps {
                git 'https://gitlab.com/kien3361931/Test'
            }
        }
        
        stage('Build') {
            steps {
                script {
                    docker.build("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}")
                }
            }
        }
        stage('Publish') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', REGISTRY_CREDENTIALS) {
                        docker.image("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_TAG}").push()
                    }
                }
            }
        }
        

    }
    post {
        always {
            cleanWs()
        }
    }
}