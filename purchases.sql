CREATE TABLE purchases (
    id SERIAL PRIMARY KEY,
    item_id INT REFERENCES items(id),
    buyer_id INT REFERENCES users(id),
    amount BIGINT NOT NULL,
    status VARCHAR(20) DEFAULT 'pending', -- pending / confirmed / canceled
    transfer_name VARCHAR(100),
    transfer_account VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
