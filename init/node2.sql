CREATE TABLE transfers(
    id SERIAL PRIMARY KEY,
    from_account INT,
    to_account INT,
    amount INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
