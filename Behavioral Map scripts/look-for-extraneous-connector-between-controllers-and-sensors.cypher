// Look for Extraneous Connector between Controllers and Sensors
MATCH p=(:Controller)-[r:Requires]->(:Sensor)<-[a:Reads]-(:Controller) 
RETURN p