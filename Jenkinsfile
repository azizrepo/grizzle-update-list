pipeline {
    agent any
    stages {
        stage('Verify branch') {
            steps {
                echo '$GIT_BRANCH'
               
                }
            }
        
        
        stage('Docker Build') {
            steps {
                bat 'docker images -a'
                bat ' docker build -t jemkis-pipeline .'
                
                bat 'docker images -a'
                
                // sh(script: 'docker images -a')
              /*  pwsh(script: ***
                    docker images -a
                     docker build -t jemkis-pipeline .
                     docker images -a
                    ***)*/
                }
            }
        
        
        
        
        
         stage('good bye') {
            steps {
                echo 'good bye'
            }
        }
    }
}
