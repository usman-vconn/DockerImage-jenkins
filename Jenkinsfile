pipeline{
    agent any;
    stages{
        stage('Download Code from Github')
	    {
	        steps{
	            git "https://github.com/HKMtech123/DynamicImage.git"
	        }
	    }

	    stage('Build Docker Images')
	    {
	        steps{
	            sh "docker build -t vinayak04u/tomcat_image:$BUILD_NUMBER . --load"
	        }
	    }

	    stage('Push to DockerHub')
	    {
	        steps{
	            sh "echo Kumar@321 | docker login -u vinayak04u --password-stdin"
	          //  sh "docker push vinayak04u/"
	        }
	    }

    }
}
