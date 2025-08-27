create table users(
                      username varchar(50) collate utf8mb4_general_ci not null primary key,
                      password varchar(500) collate utf8mb4_general_ci not null,
                      enabled boolean not null
);

create table authorities (
                             username varchar(50) collate utf8mb4_general_ci not null,
                             authority varchar(50) collate utf8mb4_general_ci not null,
                             constraint fk_authorities_users foreign key(username) references users(username)
);

create unique index ix_auth_username on authorities (username,authority);