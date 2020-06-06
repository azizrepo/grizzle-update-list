pipeline {
    agent any
    stages {
        stage('Verify branch') {
            steps {
                echo '$GIT_BRANCH'
               
                }
            }
           stage('Deployment Stage') {
            steps {
                echo 'hello wolrd'
                withMaven(maven:'maven'){
             //   bat 'mvn deploy'
                 bat 'mvn install'

                }
            }

        }
        
        stage('Docker Build') {
            steps {
                bat 'docker images -a'
              //  bat 'cd target'
                bat ' docker build -t jemkis-pipeline .'
                bat ' docker push  aziznoori/alzap-store'

                
        //        bat 'docker images -a'
                
                // sh(script: 'docker images -a')
              /*  pwsh(script: ***
                    docker images -a
                     docker build -t jemkis-pipeline .
                     docker images -a
                    ***)*/
                }
            
            post{
                success{
                echo 'Build deploy in docker hub is scuccessfully done'
                }
                failure{
                    echo 'Build Failure '
                }
            }
            }
        
        
        
        
        
         stage('good bye') {
            steps {
                echo 'good bye'
        
         //   emailext body: 'Check console output at $BUILD_URL to view the results.', 
           //         to: "${EMAIL_TO}", 
             //       subject: 'Jenkins build is back to normal: $PROJECT_NAME - #$BUILD_NUMBER'
            }
        }
    }
    post{
     always {
       //     emailext body: 'A Test EMail', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Test'
     emailext(
    to: 'somename@emailprovider.com',
    body: '${DEFAULT_CONTENT}', 
    mimeType: 'text/html',
    subject: '${DEFAULT_SUBJECT}',
    replyTo: '$DEFAULT_REPLYTO'    
    )
 
     
     }
    }
    
}
