// Hub-Like Dependency
MATCH (f:Feature)-[r:Requires]->(f2:Feature)
OPTIONAL MATCH (f2)-[r2:Requires]->(:Feature)
WITH f2, count(r) As Rtotal, count(r2) As Rtotal2
WHERE Rtotal >= 5 and Rtotal > Rtotal2
RETURN f2, Rtotal, Rtotal2