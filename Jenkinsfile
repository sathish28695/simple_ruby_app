pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the source code
                    checkout scm
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                script {
                    // Install Ruby dependencies
                    sh 'gem install bundler'
                    sh 'bundle install'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    // Run Ruby tests
                    sh 'ruby test/test_app.rb'
                }
            }
        }
    }
}

