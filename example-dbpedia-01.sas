/*------------------------------------------------------------------------*\
** Program : example-dbpedia-01.sas
** Purpose : Basic test of SAS-SPARQLwrapper
** Endpoint: dbpedia    
** Notes: SAS must be invoked with unicode support   
** Status: ok    
\*------------------------------------------------------------------------*/

options mprint mlogic nocenter;

%include "&localprojectpath.sparqlquery.sas";

%sparqlquery(
endpoint=http://dbpedia.org/sparql,
query=%str(
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX dbo: <http://dbpedia.org/ontology/>
SELECT  ?abstr
WHERE { <http://dbpedia.org/resource/Bern> dbo:mayor ?abstr.
    }
),
querymethod=queryGET,
resultdsn=query_dbpedia_01,
sparqlquerysxlemap=&localprojectpath.sparqlquery-sxlemap.map,
debug=Y,
proxyusername = &proxyusername,
proxypassword = &proxypassword,
proxyport = &proxyport,
proxyhost = &proxyhost
);

proc print data=query width=min;
run;
