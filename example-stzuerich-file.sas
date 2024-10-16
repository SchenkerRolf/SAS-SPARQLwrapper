/*------------------------------------------------------------------------*\
** Program : example-lindas-file.sas
** Purpose : Basic test of SAS-SPARQLwrapper using a query file
** Endpoint: https://ld.stadt-zuerich.ch/query
** Notes: SAS must be invoked with unicode support   
** Status: ok    
\*------------------------------------------------------------------------*/

options mprint mlogic nocenter;

%include "&helperPath.sparqlquery.sas";

%sparqlquery(
endpoint=https://ld.stadt-zuerich.ch/query,
queryfile=&helperPath.query_stzh.rq,
querymethod=queryGET,
resultdsn=query_stzh_file,
sparqlquerysxlemap=&helperPath.sparqlquery-sxlemap.map,
debug=Y,
proxyusername = &proxyusername,
proxypassword = &proxypassword,
proxyport = &proxyport,
proxyhost = &proxyhost
);

proc print data=sq width=min;
run;
