pipeline{
	agent any

	stages{
		stage('Build'){
			steps {
				echo 'Building...'
			}
			post {
				success {
					echo 'Now Archiving...'
					archiveArtifacts artifacts: './random_number_result.txt'
				}
			}
		}
		stage('Test'){
			steps{
				echo 'Testing...'
			}
		}
	}
}
