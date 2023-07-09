1.Install Xampp in c:\
2.Run xampp as administrater

3.You have to change default apache ports(80,443) to ports (81,443) by going to config/httpd.conf and change all 80 to 81.
Reference:https://www.youtube.com/watch?v=FVpa88ehYfI

4.You have to change default mysql ports(3306) to ports (3307) by going to config/my.ini and change all 3306 to 3307.

5.Paste unvdb folder in c:\xampp\htdocs.

6. Now open link localhost:81/phpmyadmin.

7.go to database,give database name(unvdb) and click on create.


8.Now go to import and choose unvdb.sql file in unvdb folder click import.

9.Now in New tab Run localhost:81/unvdb.

10. If it shows error then you have to go in c:\xampp\phpmyadmin\config.inc and change password to your sql password and add one more row $cfg['Servers'][$i]['port'] = 3307;

11.You have to also change all php file password to your sql password
