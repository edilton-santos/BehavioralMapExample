// Hub-Like Dependency
MATCH (:Feature)-[r:Requires]->(f1:Feature) 
WITH f1, count(r) As Rtotal
WHERE Rtotal >=5 AND size((:Feature)<-[:Requires]-(f1)) < Rtotal
RETURN f1, Rtotal
UNION
MATCH (:Feature)<-[r:Requires]-(f1:Feature) 
WITH f1, count(r) As Rtotal
WHERE Rtotal >=5 AND size((:Feature)-[:Requires]->(f1)) < Rtotal
RETURN f1, Rtotal
