/*------------------------------------------------------------------------*\
** Program : example-lindas-01.sas
** Purpose : Basic test of SAS-SPARQLwrapper
** Endpoint: https://ld.stadt-zuerich.ch/query
** Notes: SAS must be invoked with unicode support   
** Status: ok    
\*------------------------------------------------------------------------*/

options mprint mlogic nocenter;

%include "&localprojectpath.sparqlquery.sas";

%sparqlquery(
endpoint=https://ld.stadt-zuerich.ch/query,
query=%str(
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT * WHERE {
  ?sub <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <https://cube.link/MeasureDimension> .
} 
LIMIT 10
),
querymethod=queryGET,
resultdsn=query_stzh_01,
sparqlquerysxlemap=&localprojectpath.sparqlquery-sxlemap.map,
debug=Y,
proxyusername = &proxyusername,
proxypassword = &proxypassword,
proxyport = &proxyport,
proxyhost = &proxyhost
);

proc print data=query width=min;
run;



