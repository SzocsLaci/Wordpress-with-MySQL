#Fix url in the mysql:

#Log into MySQL

#$ mysql -u root -p

#Enter your password and proceed to select our database of choice and list all tables in it

mysql> use wordpress;
mysql> show tables;

#Next step is to update:

mysql> update wp_options set option_value = 'http://www.correctDomain.name' where option_id = 1;

#Check to verify if changes were made:

mysql> select * from wp_options where option_value = 'http://www.correctDomain.name';
