pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'python3 -m venv .venv'
                sh 'source .venv/bin/activate'
                sh 'python3 -m pip install -r requirements.txt'
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