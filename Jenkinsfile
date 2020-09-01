pipeline{
    
    agent any

    options {
        timestamps()
    }
    stages{
        stage("A"){
            steps{
                echo "========executing A========"
                echo "This is stage A"
                sh("ls -lrt")
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
        stage("B") {
            steps {
                echo "This is in stage B"
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}