# !/bin/bash

echo "Enter the project name:"
read dirname

if  [[ $dirname == '' ]]
then
	echo "Please enter a valid project name"
	exit 1
fi

cd "/home/vvverma/projects"

if [ ! -d "$dirname" ]
then
    echo "Creating new Project"
    mkdir -p ~/projects/$dirname
    echo "Project $dirname created"
else
    echo "Project with same name exists"
	exit 1
fi

echo "Loading Repositories"
cd "/home/vvverma/projects/$dirname" ; \
repo init -u git@git.devops.lairdtech.com:CP_linux/wb_repo_manifest.git ;\
repo start master --all ;\
repo sync -j 8

sudo cp /home/vvverma/projects/$dirname/.repo/repo/repo /usr/bin/repo
echo "Project is all set up"
