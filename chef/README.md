* two pass https://coderanger.net/two-pass/
* DSL hint https://stackoverflow.com/questions/5851127/change-the-context-binding-inside-a-block-in-ruby
* things I wish I knew https://zwischenzugs.com/2017/11/25/ten-things-i-wish-id-known-about-chef/

[beginner guide](https://www.linode.com/docs/applications/chef/beginners-guide-chef)
### local mode
```chef-client --local-mode hello.rb``` Execute the client locally  
```sudo chef-client --local-mode --runlist 'recipe[learn_chef_apache2]'``` to run a cookbook  

### generate  
``` chef generate ``` shows available generators  
```chef generate cookbook learn_chef_apache2``` generate a bookbook folder  
```chef generate template learn_chef_apache2 index.html``` The file index.html.erb gets created under learn_chef_apache2/templates/default

## Knife
```knife ssl check``` validate your connection to the Chef server.  
```knife cookbook site download learn_chef_apache2``` get a copy from Chef Supermarket   
```knife cookbook upload learn_chef_apache2``` upload the Learn Chef Apache cookbook to your Chef server  
```knife cookbook list``` list the cookbooks available on the server  
```knife bootstrap 52.32.197.208 --ssh-user ubuntu --sudo --identity-file ./babtsov.pem.txt --node-name node1 --run-list 'recipe[learn_chef_apache2]'``` bootstrap the remote node  
```knife ssh 52.32.197.208 'sudo chef-client' --manual-list --ssh-user ubuntu --identity-file ./babtsov.pem.txt``` update the cookbook or you can simply log in to the remote node and execute ```sudo chef-client```  

