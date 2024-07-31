pipeline {
    agent {
        dockerfile True
    }
    stages {
        stage('test') {
            steps {
                sh 'pytest /tests/tests_app.py'
            }
        }

    }
}