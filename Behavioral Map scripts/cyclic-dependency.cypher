// Cyclic Dependency
MATCH (f:Feature)-[:Requires]->(f2:Feature)-[:Requires]->(f)
OPTIONAL MATCH (f2)-[:Requires]->(f3:Feature)-[:Requires]->(f)
RETURN f, f2, f3