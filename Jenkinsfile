pipeline
{
	agent any
	stages {
		stage('Pull') {
				steps{
					script{
						checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[ credentialsId: '67c2744e-c2d9-4bI7-9f12-35c2d4eaac32', url: 'https://github.com/dhiaelhak47/angularapp.git']]])
						}
					}
				}
		stage('Build') {
				steps{
					script{
						sh "ansible-playbook /home/dhia/Desktop/myapp/Ansible/build.yml -i /home/dhia/Desktop/myapp/Ansible/inventory/host.yml --user=dhia \
                              --extra-vars "ansible_sudo_pass=dhia"
						}
					}
				}
		stage('docker') {
				steps {
					script{
						sh "ansible-playbook /home/dhia/Desktop/myapp/Ansible/docker.yml -i /home/dhia/Desktop/myapp/Ansible/inventory/host.yml"
						}
					}

				}

		}
}
