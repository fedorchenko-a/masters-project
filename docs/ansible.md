# Project Deployment and Testing Documentation

## Ansible Deployment

This project uses Ansible to automate the deployment of a Lti server python application. The Ansible playbook ensures that the required environment is set up and the application is deployed correctly.

### Prerequisites

- Ansible installed on your local machine.
- SSH access to the target server.
- The target server runs on Ubuntu.

### Ansible Role: ansible-role-lti

The Ansible role `ansible-role-lti` is used to deploy the Python application.

#### Role Structure

```plaintext
ansible-role-lti/
├── tasks
│   └── main.yml
├── templates
│   └── lti.service.j2
```

### Tasks

	1.	Update apt package list: Ensures the apt package list is up to date.
	2.	Install build dependencies: Installs necessary build dependencies.
	3.	Add deadsnakes PPA: Adds the deadsnakes PPA for the latest Python versions.
	4.	Install Python 3.11: Installs Python 3.11 from the deadsnakes PPA.
	5.	Install pip and venv for Python 3.11: Ensures python3.11-venv and python3.11-distutils are installed.
	6.	Download and install pip for Python 3.11: Downloads and installs pip for Python 3.11.
	7.	Ensure the target directory exists: Ensures the target directory /opt/apps/lti exists.
	8.	Copy the application directory: Copies the lti/ directory to /opt/apps/.
	9.	Create a virtual environment: Creates a Python virtual environment using Python 3.11.
	10.	Install dependencies in the virtual environment: Installs the required Python packages specified in requirements.txt.
	11.	Create systemd service file: Creates the systemd service file from a Jinja2 template.
	12.	Reload systemd daemon: Reloads the systemd daemon to pick up the new service file.
	13.	Enable and start the LTI service: Enables and starts the LTI service.

### Running the Playbook
To run the playbook, use the following command:
```sh
ansible-playbook -i inventory.ini playbook.yml
```
Ensure you have the appropriate inventory file and playbook configured.
