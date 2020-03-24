read -p "Please enter the user (root) : " owner
owner=${owner:-"root"}
read -p "Lockdown? (444 or 644 - 444 by default) : " chmd
chmd=${chmd:-"444"}
sudo chmod $chmd .htaccess
sudo chmod $chmd wp-config.php
sudo chown $owner:$owner .htaccess
sudo chown $owner:$owner wp-config.php
sudo chown $owner:$owner index.php
sudo chown $owner:$owner license.txt
sudo chown $owner:$owner readme.html
sudo chown $owner:$owner wp-activate.php
sudo chown $owner:$owner wp-blog-header.php
sudo chown $owner:$owner wp-comments-post.php
sudo chown $owner:$owner wp-config-sample.php
sudo chown $owner:$owner wp-cron.php
sudo chown $owner:$owner wp-links-opml.php
sudo chown $owner:$owner wp-load.php
sudo chown $owner:$owner wp-login.php
sudo chown $owner:$owner wp-mail.php
sudo chown $owner:$owner wp-settings.php
sudo chown $owner:$owner wp-signup.php
sudo chown $owner:$owner wp-trackback.php
sudo chown $owner:$owner xmlrpc.php
sudo chown $owner:$owner wp-admin
sudo chown $owner:$owner wp-admin -R
sudo chown $owner:$owner wp-includes
sudo chown $owner:$owner wp-includes -R
sudo chown $owner:$owner wp-content/index.php
sudo chown $owner:$owner wp-content/languages
sudo chown $owner:$owner wp-content/languages -R
sudo chown $owner:$owner wp-content/plugins
sudo chown $owner:$owner wp-content/plugins -R
sudo chown $owner:$owner wp-content/themes
sudo chown $owner:$owner wp-content/themes -R
sudo chown $owner:$owner wp-content/upgrade
sudo chown $owner:$owner wp-content/upgrade -R
