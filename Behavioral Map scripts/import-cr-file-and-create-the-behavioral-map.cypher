// Import CR file and create the Behavioral Map
// Change the file path to local where you saved the CR file
CALL apoc.load.json("file:///crFileSHEstudy1.json") YIELD value
CALL apoc.create.node(['Feature',value.type], {name:value.name, friendly_name:value.friendly_name, 
exported_packages:value.exported_packages, imported_packages:value.imported_packages, version:value.version, 
status:value.status, type:value.type}) YIELD node
MERGE (f:Feature {name: node.name})
WITH value, node, f
UNWIND value.relationships AS relation
MERGE (fr:Feature {name: relation.feature_name})
WITH value, relation, f, fr
WHERE relation.relationship_type <> ""
CALL apoc.merge.relationship(f,relation.relationship_type,{},{},fr) YIELD rel
RETURN value, f, fr, rel
