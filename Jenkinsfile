//Jenkinsfile (Declarative Pipeline)
/* pipeline {
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
        }}}*/

pipeline {
    agent any
    stages {
        stage('Compile Stage') {
            steps {
                echo 'hello world'
                withMaven(maven:'maven'){
                bat 'mvn clean compile'
                }
            }
        
        }
        stage('Testing Stage') {
            steps {
                echo 'hello wolrd'
                withMaven(maven:'maven'){
                bat 'mvn test'
                }
            }
        
        }
        
        stage('Deployment Stage') {
            steps {
                echo 'hello wolrd'
                withMaven(maven:'maven'){
             //   bat 'mvn deploy'
                 bat 'mvn install -Dgithub.downloads=true'
               
                }
            }
        
        }
        
         stage('good bye') {
            steps {
                echo 'good bye'
            }
        }
    }
}
