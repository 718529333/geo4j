docker stop testneo4j
docker rm testneo4j
docker run \
    --name testneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v /Users/liuzhiqing/software/neo4j/data:/data \
    -v /Users/liuzhiqing/software/neo4j/logs:/logs \
    -v /Users/liuzhiqing/software/neo4j/import:/var/lib/neo4j/import \
    -v /Users/liuzhiqing/software/neo4j/conf:/var/lib/neo4j/conf \
    -v /Users/liuzhiqing/software/neo4j/plugins:/plugins \
    neo4j:latest
    #--env NEO4J_AUTH=neo4j/test \
