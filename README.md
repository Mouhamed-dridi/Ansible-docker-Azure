# Ansible-Docker-Azure

This project automates the deployment of a three-VM solution in the Azure cloud, including a web application, monitoring tools, and their configuration, all managed by Ansible. 🚀

## Description

This project simplifies the deployment of a web application and its monitoring infrastructure on Azure. It uses Ansible to orchestrate the creation and configuration of three virtual machines: one hosting the web application, another running the Kuma monitoring solution, and a third management server.  This setup provides a complete and easily manageable cloud-based solution. 🐳

## Installation

1. **Prerequisites:**
    * An Azure subscription. ☁️
    * Your local machine with:
        * Azure CLI installed and configured. 💻
        * Git (for cloning the repository). 📂

2. **Set up the Azure Environment:**
    * Create three virtual machines in Azure:
        * **Machine 1 (Management Server):** This server will be used to access and manage the other two servers. ⚙️
        * **Machine 2 (Web Server):** This server will host the web application. 🌐
        * **Machine 3 (Monitoring Server):** This server will host the Kuma monitoring solution. 📈
    * You can use the provided Azure deployment scripts located in the `azure` folder of the repository to automate the creation of the Azure infrastructure.  Clone the repository first (see below).

3. **Clone the Repository:**
    ```bash
    git clone https://github.com/Mouhamed-dridi/Ansible-docker-Azure
    ```

4. **Install Ansible on the Management Server:**
    ```bash
    #!/bin/bash

    # Bash script to install Ansible on Linux

    # Update package list
    echo "Updating package list..."
    sudo apt update -y

    # Install software-properties-common
    echo "Installing software-properties-common..."
    sudo apt install -y software-properties-common

    # Add Ansible PPA
    echo "Adding Ansible PPA..."
    sudo add-apt-repository --yes --update ppa:ansible/ansible

    # Install Ansible
    echo "Installing Ansible..."
    sudo apt install -y ansible

    # Verify installation
    echo "Ansible installation completed. Verifying version..."
    ansible --version

    echo "Ansible is now installed and ready to use!"
    ```
    * Save this script as `install_ansible.sh` on your Management Server and make it executable: `chmod +x install_ansible.sh`
    * Run the script: `./install_ansible.sh`

5. **Docker Installation:**
    * Docker will be installed on the Web Server (Machine 2) and the Monitoring Server (Machine 3) using Ansible playbooks located in the `ansible/playbook` folder.  See the "Usage" section for details. 🐳

## Usage

1. **Run the Ansible Playbooks:**
   The `ansible/playbook` folder, will handle setting up the Azure infrastructure (if configured), installing Docker on the necessary VMs, deploying the web application, and configuring the Kuma monitoring solution.  All deployment configurations are within this folder.

## Learning More About Uptime Kuma

* **Tutorial Video:** <a href="https://youtu.be/DbF96IHOZig?si=YEt30V27H9byW--g" target="_blank"> with NetworkChuck
* **Uptime Kuma GitHub Repository:** [https://github.com/louislam/uptime-kuma](https://github.com/louislam/uptime-kuma)


## Contributing

Contributions are welcome!  Please open a pull request with your changes.  See the `CONTRIBUTING.md` file for more details. 🤝

## Contact
<a href="https://www.linkedin.com/in/mohamed-dridi-networking/" target="_blank"> 🔗 LinkedIn: Connect with me! </a>
