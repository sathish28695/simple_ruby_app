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
                    sh 'gem install bundler -v 2.2.10'
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

