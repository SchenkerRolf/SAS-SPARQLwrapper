/*------------------------------------------------------------------------*\
** Program : example-lindas-file.sas
** Purpose : Basic test of SAS-SPARQLwrapper using a query file
** Endpoint: https://ld.stadt-zuerich.ch/query
** Notes: SAS must be invoked with unicode support   
** Status: ok    
\*------------------------------------------------------------------------*/

options mprint mlogic nocenter;

%include "&localprojectpath.sparqlquery.sas";

%sparqlquery(
endpoint=https://ld.stadt-zuerich.ch/query,
queryfile=&localprojectpath.query_lindas.rq,
querymethod=queryGET,
resultdsn=query,
sparqlquerysxlemap=&localprojectpath.sparqlquery-sxlemap.map,
debug=Y
);

proc print data=query width=min;
run;
