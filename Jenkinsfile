pipeline {
    agent {
        dockerfile true
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