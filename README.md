# Behavioral Map Example

Before running the examples, you need to install Neo4J Desktop. You can do the **download** the Neo4J Desktop on this website https://neo4j.com/download/?ref=try-neo4j-lp.

The folder **Neo4J APOC Configuration** stores the APOC API configuration file.
**Neo4J and APOC configuration.pdf** file describes how to create a local database and APOC configuration process.

We provide two Configuration Rules (CR) files (**crFileSHEstudy1.json**, and **crFileSHEstudy2.json**) that can be used to create the Behavioral Map and look for Architectural Smell using the scripts are available in the folder **Behavioral Map scripts**.

Scripts available in the folder **Behavioral Map scripts**:
- **import-cr-file-and-create-the-behavioral-map.cypher**: Script used to import CR file and create the Behavioral Map.
- **hub-like-dependency.cypher**: Used to look for Hub-Like Dependency architectural smell in the configuration.
- **cyclic-dependency.cypher**: Used to look for Cyclic Ddependency smell in the configuration.
- **extraneous-connector.cypher**: Used to look for Extraneous Connector architectural smell in the configuration.
- **look-for-extraneous-connector-between-controllers-and-sensors.cypher**: Used to look for Extraneous Connector between Controllers and Sensors in the Behavioral Map.
- **look-for-oppressed-monitors.cypher** Used to look for Oppressed Monitors in the configuration.
- **get-all-features-in-the-map.cypher**: Used to get all features and their relationship on the map.
- **delete-the-graph.cypher**: Used to delete all maps in the database.

**How to use the Behavioral Map**: 
- Execute the script in the file import-cr-file-and-create-the-behavioral-map.cypher to import the CR file and create the map.
- To look for Cyclic Ddependency smell, execute the script cyclic-dependency.cypher.
- To look for Hub-Like Dependency smell, execute the script hub-like-dependency.cypher.
- To look for Oppressed Monitors smell, execute the script look-for-oppressed-monitors.cypher.
- To look for Extraneous Connector smell, execute the script extraneous-connector.cypher or look-for-extraneous-connector-between-controllers-and-sensors.cypher.
- To see all features and their relationship on the map, execute the script get-all-features-in-the-map.cypher.
- To delete the map, execute the delete-the-graph.cypher.
