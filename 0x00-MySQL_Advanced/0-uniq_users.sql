-- Check if the users table exists
-- id, email, name
IF NOT EXISTS (SELECT * FROM information_schema.tables WHERE table_name = 'users') THEN
    CREATE TABLE users (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        email VARCHAR(255) NOT NULL UNIQUE,
        name VARCHAR(255)
    );
END IF;
