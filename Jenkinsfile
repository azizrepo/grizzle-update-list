//Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages { 
        
        stage('Build Branch') {
            steps {
                echo 'build brabch scuccessfully'
            }
        }
        
         
        
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
        
        
   
    }
}
