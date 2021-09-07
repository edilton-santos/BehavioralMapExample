// Look for Oppressed Monitors
MATCH (f1:Feature)-[r:Reads]->(:Feature)
WITH f1, count(r) As Rtotal
WHERE Rtotal >= 2 // Check if there are 2 or more relationship type reads.
RETURN f1, Rtotal