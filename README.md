# mysql_cloudmanaged_databases

## gcp
1. In Google Cloud Platform, TOGGLE the hamburger menu and SELECT SQL from the options
2. Create an instance > Choose MySQL
3. Create a Instance ID and Password
4. Cloud SQL edition should be Enterprise and the preset should be Sandbox
5. Under Customize your instance, change the machine configuration to Shared Core and 1 vCPU, 0.614 GB
6. Ensure that the pricing estimate is $0.01 per hour and SELECT create instance.
   
## Azure
1. In Azure, locate Azure Services and select "Create a resouce"
2. In the search bar, enter Azure Database for MySQL and hit enter.
3. From the list of services, select Azure Database for MySQL, selecte CREATE
4. Create a server that has the following parameters:
Deployment option: Flexible,
Tier: Burstable
Compute: B1S [$6.21 p/month] or B1MS [$12.41 p/month]
5. Under the Authentication Tab, create a username and password.   *this information will be needed to connect with mysql workbench*
6. Under Networking, click the option + Add 0.0.0.0 - 255.255.255.255
7. At the bottom of the page select review and create.
8. Once the server has been deployed, return the MySQL Workbench to connect to Azure

## MySQL Workbench
### Connecting to the webservices
1. From the homepage, click the plus button near the MySQL Connections
2. Name the connection and edit the Hostname and Username. For GCP this will be the IP Address for the instance you created and root. For Azure, this will be Server Name and Server admin login name. Regardless of which service is used, you will have to enter the password that was used to create the server's instance.
3. Test connection
### Entity Relationship Diagram (ERD)
1. From any tab, press Ctrl + R to toggle Reverse Engineer
2. Select the MySQL connection that you wish to use and click throught the prompts until a EER diagram is Generated

## Errors/Challenges
### There were two issues that I came across as I familiarized myself with SQL and the Workbench
1. I created a table as a test and attempted to delete the table but was unable to do so. To fix this issue I had to take MySQL out of saftey update mode. To do this I entered SET SQL_SAFE_UPDATES = 0;
2. The other issue was when I entered values into the table as a date but did so incorrectly. I learned that SQL formats dates as YYYY-MM-DD

