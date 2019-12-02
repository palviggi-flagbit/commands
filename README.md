# commands
Small collection of scripts to simplify daily tasks

# Usage

I have them linked on my path (on Ubuntu on `/usr/local/bin`) to be able to use them from anywhere.   
Linked and not copied so it's easy to update them without needing sudo.  
For simplicity, I also avoid the `.sh` on the link name.

    chmod +x /path/to/script.sh
    sudo ln -s /path/to/script.sh /usr/local/bin/script

## new_branch

Creates a new namespaced branch based on a remote branch and checkout it. 

By default uses the `feature` namespace and branchs out from `origin/master`. It takes parent and namespace as optional params.

    $ /> new_branch PROJ-999 

## push_to_dev

Merges the current branch into the dev branch and pushes it, then checkout back into the branch. Takes the dev name as optional param.

## delete_css

Delete the compiled style-?.css and intermediate less files to easily test style changes.

## start_dns

This one is to avoid cluttering the localhost domain with ports, and also to avoid port conflicts in case of working in more than one project.

It registers the docker containers on /etc/hosts, and updates the IP in case it changes.

By default it uses the container name, but also accepts container.hostname or network aliases. 

Setup the aliases on an override file (`docker-compose.override.yml` is loaded automatically if it exists)

    version: "2"
    services:
      proj-nginx:
        networks:
          proj-network:
            aliases:
              - proj.magento.local
              - b2c-europe.proj.magento.local
              - b2c-int.proj.magento.local
              - b2b-europe.proj.magento.local
              - b2b-int.proj.magento.local