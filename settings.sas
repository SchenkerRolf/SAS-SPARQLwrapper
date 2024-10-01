* Encode passwords;

proc pwencode in='webpw'; run; 
%let webpw = &_pwencode;

proc pwencode in='proxypw'; run; 
%let proxypassword = &_pwencode;



* Set other variables;

%let webuser = demo;

%let proxyhost = proxyhost;
%let proxyport = 1234;
%let proxyusername = proxyname;
