## Working with MongoDB

Follow these steps to initialize and then enable authentication safely.

### Step 1 — Install config and **comment out auth**
Temporarily disable auth in the Mongo configuration by removing:

- `--auth`
- `--keyFile`
- `/data/configdb/mongo-keyfile`

> Note: This is required for the **first-time** setup or after clearing the volume.

### Step 2 — Start containers
Run:

- `docker compose up -d`

### Step 3 — Stop containers
Run:

- `docker compose down`

### Step 4 — **Re-enable auth**
Restore the auth settings you commented out in Step 1:

- `--auth`
- `--keyFile`
- `/data/configdb/mongo-keyfile`

### Step 5 — Start containers again
Run:

- `docker compose up -d`
