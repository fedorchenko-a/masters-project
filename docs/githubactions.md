## GitHub Actions Workflows

This project uses GitHub Actions for CI/CD. There are two workflows defined: one for testing and one for deployment.

### Test Workflow

The test workflow runs on every push to the main branch and on pull requests targeting the main branch. It performs security analysis and code linting using bandit and flake8.

### Deployment Workflow

The deployment workflow runs on tag creation matching the pattern x.xx.x. It performs security analysis, code linting, and deploys the application using rsync.

### Secrets Configuration

Ensure you have the following secrets configured in your GitHub repository settings:

	•	SERVER_PASS: SSH key for authentication.
	•	SERVER_HOST: The hostname or IP address of the server.
	•	SERVER_USER: The username for SSH access.

This documentation provides an overview of the Ansible setup and GitHub Actions workflows used in this project. Ensure you customize the configurations as needed for your specific environment.