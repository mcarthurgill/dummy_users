dummy_users
===========

This is an interesting app that helped me understand user login/sign_up. 
The app basically allows users to create an account and login. 
If a user hasn't created an account and tries to log in, that user is routed to a troll page. 
Kinda pointless, but it was a fun way to learn some basic user auth. 

Steps to run:
clone the repo
cd into the repo
run bundle install
run rake db:create
run rake db:migrate
run shotgun
then go to localhost:9393
