CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price BIGINT NOT NULL,
    description TEXT,
    file_type VARCHAR(20),   -- img / video / file / audio / 3d
    file_url TEXT NOT NULL,  -- bisa link ke server atau cloud storage
    thumb_url TEXT,
    author_id INT REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
