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



* Set path with helper files;
* sparqlreadxml.sas, sparqlquery.sas as well as ;
* example-dbpedia-01.sas, example-stzh-01.sas, example-dbpedia-file.sas and example-stzuerich-file.sas;

%let helperPath = c:\sas\;


%include "&helperPath.sparqlquery.sas";
%include "&helperPath.sparqlreadxml.sas";
