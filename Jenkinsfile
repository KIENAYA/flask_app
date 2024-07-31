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

    }
}