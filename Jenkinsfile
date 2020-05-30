pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages { 
        
       stage('Build Branch') {
            steps {
                echo 'build brabch scuccessfully'
            }
        }
        stage('test') {
            steps {
                bat 'mvn --version'
            }
        }}}
