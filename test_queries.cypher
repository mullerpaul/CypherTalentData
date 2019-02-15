// requisition & skill domain data

// show all nodes linked to another node (this is very general, but specific enough given our data)
MATCH (j)--() RETURN j

// list skills required by all jobs in descending order by how many reqs. require them
MATCH (s:Skill)<-[:Requires]-(j:Requisition) 
RETURN s, count(distinct j) AS distinct_req_count 
ORDER BY distinct_req_count desc

// List common job titles among requisitions
MATCH (j:Requisition)-[:HasTitle]->(t:JobTitle) 
RETURN COUNT(distinct j) AS req_count,
       COUNT(distinct t) AS title_count

