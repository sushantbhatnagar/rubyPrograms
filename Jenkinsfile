pipeline{
	agent any

	stages {
		stage('Build') {
			steps {
				echo 'Running a Ruby Program from Git...'
				ruby  random_number_generator.rb
			}
			post {
				success {
					echo 'Archiving artifacts...'
					archiveArtifacts artifacts: '**/*.txt'	
				}
			}
		}
	}
}
