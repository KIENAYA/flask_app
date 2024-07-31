pipeline {
    agent {
        docker { image 'python:3.9-slim' }
    }

    stages {
        stage('build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('test') {
            steps {
                sh 'pip install pytest'
                sh 'pytest'

            }
           
        }
        stage('deploy') {
            steps {
                sh 'python app.py'
            }
        }
    }
}