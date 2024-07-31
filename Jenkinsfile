pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('deploy') {
            steps {
                sh 'python app.py'
            }
        }

    }
}