pipeline {
	agent any
	
	options {
		// This is required if you want to clean before build
		skipDefaultCheckout(true)
	}
	
	environment {
		PATH="/opt/liquibase/liquibase/:$PATH"
		// DRY_RUN = "${params.DRY_RUN}"
		// LIQUIBASE_COMMAND_URL = credentials('LIQUIBASE_DEV_URL')
		// LIQUIBASE_COMMAND_USERNAME = credentials('LIQUIBASE_USER')
		// LIQUIBASE_COMMAND_PASSWORD = credentials('LIQUIBASE_PASSWORD')
		LIQUIBASE_LICENSE_KEY = credentials('LIQUIBASE_KEY')
		// LIQUIBASE_DEFAULTS_FILE="PropertyFiles/liquibase.properties"
		// JIRA = "${params.JIRA}"
	}

	stages {
		stage('Workspace') {
			steps {
			
			    // script {
				//   currentBuild.displayName = "#" +env.BUILD_NUMBER + " ${JIRA}"
				// }
			
				// Clean before build
				cleanWs() // This requires ws-cleanup plugin
					
				// We need to explicitly checkout from SCM here
				checkout scm
				echo "Building ${env.JOB_NAME}..."
			}  // end steps
		} // end stage


		stage('Flow') {
			steps {
				sh '''
					liquibase flow
				'''  
				
			} // end steps
		} // end stage

    }  // end stages
	
	// post {
	// 		cleanup {  
	// 			archiveArtifacts '**/reports/**'
	// 		} // cleanup	
	
	// } // end post
	
} // end pipeline