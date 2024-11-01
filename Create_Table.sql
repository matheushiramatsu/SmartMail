-- create database DB_SMARTMAIL;

-- Tabela User
CREATE TABLE User (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Folder
CREATE TABLE Folder (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(id),
    name VARCHAR(50)
);

-- Tabela Email
CREATE TABLE Email (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(id),
    subject VARCHAR(255),
    content TEXT,
    sender VARCHAR(100),
    received_at TIMESTAMP,
    folder_id INT REFERENCES Folder(id)
);

-- Tabela Event
CREATE TABLE Event (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(id),
    email_id INT REFERENCES Email(id),
    title VARCHAR(100),
    date DATE,
    time TIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Task
CREATE TABLE Task (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(id),
    email_id INT REFERENCES Email(id),
    description TEXT,
    due_date DATE,
    status VARCHAR(20)
);

-- Tabela Reminder
CREATE TABLE Reminder (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(id),
    task_id INT REFERENCES Task(id),
    reminder_time TIMESTAMP
);
