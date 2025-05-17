pipeline {
   agent none
   tools{
//     jdk "myjava"
        maven "Maven"
   }
    stages {
        stage('Compile') { //prod
        agent {label 'node_slave'}
            steps {
                echo "Compile the code"
                sh "mvn compile"
            }
        }
         stage('UnitTest') { //test
         agent {label 'node_slave'}
            steps {
                echo "Test the code"
                sh "mvn test"
            }
        }
         stage('Package') {//dev
        agent {label 'node_slave'}
            steps {
                echo "Package the code"
                sh "mvn package"
            }
        }
    }
}
