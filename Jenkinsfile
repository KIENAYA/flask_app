pipeline {
    agent {
        label 'docker-python'
    }

    stages {
        stage('build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('deploy') {
            steps {
                sh 'python app.py'
            }
        }
    }
}