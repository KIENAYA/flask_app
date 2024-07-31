pipeline {
    agent {
        dockerfile true
    }
        stage('deploy') {
            steps {
                sh 'python app.py'
            }
        }
}