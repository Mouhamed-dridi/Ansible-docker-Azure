# Ansible-Docker-Azure

This project demonstrates how to use Ansible to manage Docker containers and deploy a web application solution, all running in the Azure cloud.  It provides a streamlined and automated approach to deploying and managing your web apps.

## Description

This project simplifies the process of deploying web applications to Azure by leveraging the power of Ansible for orchestration and Docker for containerization.  It automates the creation of necessary Azure resources, sets up Docker on the virtual machines, builds and manages Docker images, and deploys the web application.

## Installation

1. **Prerequisites:**
    * An Azure subscription.
    * Ansible installed on your local machine.
    * Azure CLI installed and configured.
    * Docker installed on your local machine (for building images).

2. **Set up the Azure Environment:**
    * Create three virtual machines in Azure:
        * **Machine 1 (Management Server):** This server will be used to access and manage the other two servers.
        * **Machine 2 (Web Server):** This server will host the web application.
        * **Machine 3 (Monitoring Server):** This server will host the application monitoring tools.

3. **Install Ansible:**
    * Install Ansible on the Management Server.

4. **Install Docker:**
    * Install Docker on the Web Server (Machine 2).
    * Install Docker on the Monitoring Server (Machine 3).

5. **Install Ansible Collections:**
    ```bash
    ansible-galaxy collection install azure.azcollection
    ansible-galaxy collection install community.docker
    ```

## Usage

1. **Customize Variables:**
    * Modify the `vars.yml` file to configure your deployment settings, such as:
        * Resource group name
        * Location for resources
        * Virtual machine sizes
        * Docker image name and tag
        * Web application port
        * Monitoring tools to install

2. **Run the Ansible playbook:**
    ```bash
    ansible-playbook deploy.yml
    ```

## Contributing

Contributions are welcome!  Please open a pull request with your changes.  See the `CONTRIBUTING.md` file for more details.


## Contact

[Your contact information, e.g., email address]

## Acknowledgements

[Any acknowledgements, e.g., libraries used]
