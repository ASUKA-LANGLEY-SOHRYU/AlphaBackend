create table Company(
                        id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                        name varchar(300) NOT NULL UNIQUE
);

create table Users(
                      id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                      email varchar(300) NOT NULL UNIQUE,
                      full_name varchar(200) NOT NULL,
                      password varchar(255) NOT NULL,
                      sex varchar(1),
                      date_of_birth date,
                      education_level int,
                      income int,
                      role int,
                      company_id int Unique REFERENCES Company(id)
);

create table Address(
                        id int primary key,
                        user_id int references Users(id),
                        country varchar(50),
                        region varchar(50),
                        city varchar(50),
                        street varchar(50)
);

create table Survey(
                       id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                       company_id int references Company(id),
                       text varchar(1000),
                       picture varchar unique,
                       questions varchar
);


create table Answers(
                        id int primary key GENERATED BY DEFAULT AS IDENTITY,
                        survey_id int not null unique references Survey(id),
                        user_id int not null unique references Users(id),
                        data varchar
);




