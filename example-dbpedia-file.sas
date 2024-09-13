/*------------------------------------------------------------------------*\
** Program : example-dbpedia-file.sas
** Purpose : Basic test of SAS-SPARQLwrapper using a query file
** Endpoint: dbpedia    
** Notes: SAS must be invoked with unicode support   
** Status: ok    
\*------------------------------------------------------------------------*/

options mprint mlogic nocenter;

%include "&localprojectpath.sparqlquery.sas";

%sparqlquery(
endpoint=http://dbpedia.org/sparql,
queryfile=&localprojectpath.query_dbpedia.rq,
querymethod=queryGET,
resultdsn=query,
sparqlquerysxlemap=&localprojectpath.sparqlquery-sxlemap.map,
debug=Y
);

proc print data=query width=min;
run;
