* Step 1: Encoding the Password;

proc pwencode in='myAuthPassword'; run; 
%let webpw = &_pwencode;

proc pwencode in='myProxyPassword'; run; 
%let proxypassword = &_pwencode;

%let webuser = myAuthUser;

%let proxyhost = myProxyHost;
%let proxyport = myProxyPort;
%let proxyusername = myProxyUsername

%let localprojectpath = myProjectPath;
