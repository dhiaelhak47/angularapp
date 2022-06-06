pipeline
{
	agent any
	stages {
		stage('Pull') {
				steps{
					script{
						checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[ credentialsId: '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', url: 'https://github.com/dhiaelhak47/angularapp.git']]])
						}
					}
				}


		}
}
