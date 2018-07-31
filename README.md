# README
Cricket Light is a simple rails application using RSolr to display status information about object in SOLR based on OID and ID searches.

RUBY: 2.3.7 ||
RAILS: 5.1.6

## TO-DO
Query Oracle -> Solr not the other way around

## How to Install
Run the script.sh file and it should install the dependencies needed by the ruby-oci8 gem.

## General Architechture
QTT is a rails application with no database access.  It uses bootstrap as the HTML framework and JQuery.

QTT uses RSolr to connect and query from SOLR for documents. RSolr is wrapped in the YulSolrSearcher class.

QTT also uses OCI-8 to connect and query from oracle.

To generate the query for oids/ids, the controller takes the list of oids and ids and adds the query modifiers and combines them with OR.  

There is a SolrDocument class used to wrap the document hash provided by SOLR and add some additional functionality specific to our SOLR index.
There is also an OciDocument class used to keep hash names similar between the two documents.