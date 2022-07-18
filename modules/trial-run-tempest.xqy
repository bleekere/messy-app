xquery version "3.1";
(: learning xquery using the tempest data :)

(: first: declare namespaces :)
declare namespace tei="http://www.tei-c.org/ns/1.0";

(: then declare the dataset :)
let $dataset := fn:doc("../data/tempest.xml")

(: now play around with the dataset :)

(: let's see who collaborated on the project :)
(: we will want their full names :)
(: for $project-collaborator in $dataset//tei:titleStmt/tei:respStmt/tei:persName
let $name := xs:string($project-collaborator)
let $tokenized-name := fn:tokenize($name)[1] || " " || fn:tokenize($name)[2] => translate(",", "")
return $tokenized-name :)

(: let's get the full names of the characters in the tempest :)
(: declare the variable :)
for $charName in $dataset//tei:person/tei:persName[@type='standard']/string()
return $charName

