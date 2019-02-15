// REQUISITIONS

// We MUST capture:
//   job title/role  -- To model as attribute or relationship?  
//   the skills required
//   the owner of the required (who to contact) -- To model as attribute or relationship?  
// We CAN capture:
//   location
//   salary

// It was difficult to figure out how to NOT create new nodes for skills if they already existed.  
// Copious usage of MERGE seems to be the way to go.

// first one from this: https://www.dice.com/jobs/detail/Project-Manager-Fusion-IT-Inc-Broomfield-CO-80020/10358828/749565
MERGE (j:Requisition { id: 100 } )
MERGE (t:JobTitle { title: "Project Manager" } )
MERGE (o:Person { name: "Prasanna Alla" } )
MERGE (s1:Skill { skill: "Project Management" } )
MERGE (s2:Skill { skill: "Operations" } )
MERGE (s3:Skill { skill: "Waterfall" } )
MERGE (s4:Skill { skill: "Agile" } )
MERGE (s5:Skill { skill: "Telecom" } )
MERGE (o)-[:Created]->(j)
MERGE (j)-[:HasTitle]->(t)
MERGE (j)-[:Requires]->(s1)
MERGE (j)-[:Requires]->(s2)
MERGE (j)-[:Requires]->(s3)
MERGE (j)-[:Requires]->(s4)
MERGE (j)-[:Requires]->(s5)


// from this: https://www.dice.com/jobs/detail/UA%26%2347UI-Developer-IT-Avalon-Broomfield-CO-80021/10476796/UA154
MERGE (j:Requisition { id: 101 } )
MERGE (t:JobTitle { title: "UA/UI Developer" } )
MERGE (o:Person { name: "Darren Guion" } )
// MERGE (e1:Education { degree: "Bachelors" } )   don't know how to model OR relationships ( bachelors OR masters in CS OR IT )
// MERGE (e2:Experience { years: 2 field: "UI" } )   don't know how to model this either
MERGE (s1:Skill { skill: "React" } )
MERGE (s2:Skill { skill: "AngularJS" } )
MERGE (s3:Skill { skill: "Ember" } )
MERGE (s4:Skill { skill: "SASS" } )
MERGE (s5:Skill { skill: "LESS" } )
MERGE (s6:Skill { skill: "Stylus" } )
MERGE (s7:Skill { skill: "NodeJS" } )
MERGE (s8:Skill { skill: "git" } )
MERGE (s9:Skill { skill: "APIs" } )
MERGE (s10:Skill { skill: "Unit tests" } )
MERGE (o)-[:Created]->(j)
MERGE (j)-[:HasTitle]->(t)
MERGE (j)-[:Requires]->(s1)
MERGE (j)-[:Requires]->(s2)
MERGE (j)-[:Requires]->(s3)
MERGE (j)-[:Requires]->(s4)
MERGE (j)-[:Requires]->(s5)
MERGE (j)-[:Requires]->(s6)
MERGE (j)-[:Requires]->(s7)
MERGE (j)-[:Requires]->(s8)
MERGE (j)-[:Requires]->(s9)
MERGE (j)-[:Requires]->(s10)

// from https://www.dice.com/jobs/detail/Business-Operations-Analyst-DISH-Englewood-CO-80110/appblok/69_127409
MERGE (j:Requisition { id: 102 } )
MERGE (t:JobTitle { title: "Business Operations Analyst" } )
// MERGE (o:Person { name: "Darren Guion" } )  no person listed!
MERGE (s1:Skill { skill: "Excel" } )
MERGE (s2:Skill { skill: "SQL" } )
MERGE (s3:Skill { skill: "Transact SQL" } )
MERGE (s4:Skill { skill: "Detail Oriented" } )
MERGE (s5:Skill { skill: "Analytical" } )
MERGE (s6:Skill { skill: "Good communication skills" } )
//MERGE (o)-[:Created]->(j)
MERGE (j)-[:HasTitle]->(t)
MERGE (j)-[:Requires]->(s1)
MERGE (j)-[:Requires]->(s2)
MERGE (j)-[:Requires]->(s3)
MERGE (j)-[:Requires]->(s4)
MERGE (j)-[:Requires]->(s5)
MERGE (j)-[:Requires]->(s6)

// https://www.dice.com/jobs/detail/Oracle-Database-Administrator-Productive-Data-Commercial-Solutions-Westminster-CO-80234/pdsinc/363775
// slightly modified to test data loads
MERGE (j:Requisition { id: 103 } )
MERGE (t:JobTitle { title: "Oracle Database Administrator" } )
MERGE (o:Person { name: "Allison McKenzie" } )
MERGE (s1:Skill { skill: "SQL" } )
MERGE (s2:Skill { skill: "Oracle DBA" } )
MERGE (s3:Skill { skill: "Transact SQL" } )
MERGE (s4:Skill { skill: "Detail Oriented" } )
MERGE (s5:Skill { skill: "Analytical" } )
MERGE (s6:Skill { skill: "Good communication skills" } )
MERGE (s7:Skill { skill: "git" } )
MERGE (o)-[:Created]->(j)
MERGE (j)-[:HasTitle]->(t)
MERGE (j)-[:Requires]->(s1)
MERGE (j)-[:Requires]->(s2)
MERGE (j)-[:Requires]->(s3)
MERGE (j)-[:Requires]->(s4)
MERGE (j)-[:Requires]->(s5)
MERGE (j)-[:Requires]->(s6)
MERGE (j)-[:Requires]->(s7)


// https://www.dice.com/jobs/detail/Senior-.Net-Developer-Charles-Schwab-%26-Co.%2C-Inc.-Lone-Tree-CO-80112/10228622/20181011%26%23456516
// slightly modified to test data loads
MERGE (j:Requisition { id: 104 } )
MERGE (t:JobTitle { title: "Senior .Net Developer" } )
//MERGE (o:Person { name: "Allison McKenzie" } )
MERGE (s1:Skill { skill: "C#" } )
MERGE (s2:Skill { skill: "C++" } )
MERGE (s4:Skill { skill: "Oracle" } )
MERGE (s5:Skill { skill: "MongoDB" } )
MERGE (s6:Skill { skill: "Good communication skills" } )
MERGE (s7:Skill { skill: "git" } )
MERGE (s8:Skill { skill: "mentoring" } )
MERGE (s9:Skill { skill: "Agile" } )
//MERGE (o)-[:Created]->(j)
MERGE (j)-[:HasTitle]->(t)
MERGE (j)-[:Requires]->(s1)
MERGE (j)-[:Requires]->(s2)
MERGE (j)-[:Requires]->(s4)
MERGE (j)-[:Requires]->(s5)
MERGE (j)-[:Requires]->(s6)
MERGE (j)-[:Requires]->(s7)
MERGE (j)-[:Requires]->(s8)
MERGE (j)-[:Requires]->(s9)

// https://www.dice.com/jobs/detail/Sr.-.NET-Developer-VISION-INFOTECH-INC.-Broomfield-CO-80020/10120623/2019%26%23451097
// slightly modified to test data loads
MERGE (j:Requisition { id: 105 } )
MERGE (t:JobTitle { title: "Senior .Net Developer" } )
MERGE (o:Person { name: "Abhay Gupta" } )
MERGE (s1:Skill { skill: "C#" } )
MERGE (s2:Skill { skill: "T-SQL" } )
MERGE (s3:Skill { skill: ".Net Core 2.1" } )
MERGE (s4:Skill { skill: "ReactJS" } )
MERGE (s5:Skill { skill: "Bootstrap" } )
MERGE (s6:Skill { skill: "JQuery" } )
MERGE (s7:Skill { skill: "ASP.NET" } )
MERGE (o)-[:Created]->(j)
MERGE (j)-[:HasTitle]->(t)
MERGE (j)-[:Requires]->(s1)
MERGE (j)-[:Requires]->(s2)
MERGE (j)-[:Requires]->(s3)
MERGE (j)-[:Requires]->(s4)
MERGE (j)-[:Requires]->(s5)
MERGE (j)-[:Requires]->(s6)
MERGE (j)-[:Requires]->(s7)
