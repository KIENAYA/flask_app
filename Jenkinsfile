pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'apt install python3-pip'
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