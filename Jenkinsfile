pipeline {
    agent {
        label 'docker-agent-alpine'
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