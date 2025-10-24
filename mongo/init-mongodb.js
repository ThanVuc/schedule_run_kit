// Initialization script for personal_schedule database
const dbName = "personal_schedule";
const username = "personal_schedule_user";
const password = "personal_schedule_1234";

const db = db.getSiblingDB(dbName);

if (!db.getUser(username)) {
  db.createUser({
    user: username,
    pwd: password,
    roles: [
      { role: "readWrite", db: dbName },
      { role: "dbOwner", db: dbName }
    ]
  });
  print(`✅ Created user '${username}' on database '${dbName}'.`);
} else {
  print(`ℹ️ User '${username}' already exists on database '${dbName}'.`);
}

print("🎉 MongoDB initialization complete.");
