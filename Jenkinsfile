pipeline{
	agent any

	stages {
		stage('Build') {
			steps {
				echo 'Running a Ruby Program from Git...'
			}
			post {
				success {
					echo 'Archiving artifacts...'
					archiveArtifacts artifacts: '.txt'	
				}
			}
		}
	}
}
