/*------------------------------------------------------------------------*\
** Program : example-dbpedia-file.sas
** Purpose : Basic test of SAS-SPARQLwrapper using a query file
** Endpoint: dbpedia    
** Notes: SAS must be invoked with unicode support   
** Status: ok    
\*------------------------------------------------------------------------*/

options mprint mlogic nocenter;

%include "&helperPath.sparqlquery.sas";

%sparqlquery(
endpoint=http://dbpedia.org/sparql,
queryfile=&localprojectpath.query_dbpedia.rq,
querymethod=queryGET,
resultdsn=query_dbpedia_file,
sparqlquerysxlemap=&helperPath.sparqlquery-sxlemap.map,
debug=Y,
proxyusername = &proxyusername,
proxypassword = &proxypassword,
proxyport = &proxyport,
proxyhost = &proxyhost
);

proc print data=sq width=min;
run;
