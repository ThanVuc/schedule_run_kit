## Working with mongo:
# Step 1: Install the mongo configuration and comment auth (include: --auth, --keyFile, /data/configdb/mongo-keyfile). (Sinh)
# Step 2: Run: docker compoes up -d.
    + Note: db is empty (it's the first time you run or please clear the volume)
# Step 3: Run: docker compose down
# Step 4: Uncomment auth (include: --auth, --keyFile, /data/configdb/mongo-keyfile)
# Step 5: Run: docker compose up -d
