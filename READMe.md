# Ansible NGINX - Laravel
This is a Vagrant and Ansible provisioning for Nginx and the [Laravel
Framework](http://laravel.com) on Ubuntu and Debian based servers

## Installation
- Clone this repository inside your project directory.

## For development

  Update the relevant var files in the vars diretory specifically
  
      - hosts_dev.yml
      - commom.yml
      - mysql.yml
      
The production var files are;
      - hosts_prod
      - commom_prod.yml


## Usage

### For development;
- Clone repository into your project directory.
  - git clone git@github.com:stevepop/ansible-laravel5.git [your project name]
  - Execute vagrant up

### For Production
Chnage into your ansible directory

Ensure all relevant production var files have been updated

Execute ansible-playbook -i inventories/prod playbook_prod.yml

This project is still a work-in-progress so their may be a few issues. 
Feel free to contribute changes to this repository by forking a branch and creating a pull request.


