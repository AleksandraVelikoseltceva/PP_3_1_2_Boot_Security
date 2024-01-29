-- Table: users
CREATE TABLE users.users
(
    id        INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username  VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age       INT(15)      NOT NULL,
    password  VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

-- Table: roles
CREATE TABLE users.roles
(
    id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles
CREATE TABLE users.users_roles
(
    user_id INT NOT NULL,
    roles_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (roles_id) REFERENCES roles (id),

    UNIQUE (user_id, roles_id)
) ENGINE = InnoDB;

-- Insert data

INSERT INTO users (id, username, last_name, age, password)
VALUES (1, 'admin', 'adminLastName', '20', '$2a$10$ILZwHhLkoYBkfOC7y5e9pu.XYAag.G7flEobcJgbLr.dg/QG2Ziee'),
       (2, 'user', 'userLastName', '20', '$2a$10$ILZwHhLkoYBkfOC7y5e9pu.XYAag.G7flEobcJgbLr.dg/QG2Ziee');

INSERT INTO roles (id, name)
VALUES (1, 'ROLE_USER'),
       (2, 'ROLE_ADMIN');


INSERT INTO users_roles (user_id, roles_id)
VALUES (1, 2),(2, 1);
