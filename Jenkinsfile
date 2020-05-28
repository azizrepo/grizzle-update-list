//Jenkinsfile (Declarative Pipeline)
/* pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages { 
        
    /*    stage('Build Branch') {
            steps {
                echo 'build brabch scuccessfully'
            }
        }
        
         
        
        stage('test') {
            steps {
                sh 'mvn --version'
            }
        }*/
        
        
   
    }
}*/
pipeline {
    agent {
        docker { image 'node:7-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
