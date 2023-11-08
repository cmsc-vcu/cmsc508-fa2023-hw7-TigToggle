# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int NOT NULL,
    skill_name varchar(256) NOT NULL,
    skill_description varchar(4096) NOT NULL,
    skill_tag varchar(256) NOT NULL,
    skill_url varchar(4096),
    skill_time_commitment varchar(256),
    PRIMARY KEY (skills_id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!
# Atticus has skills 1,3,6;
# Tulip has skills 3,4,5;
# One-One has skills 1,5;
# Jesse has no skills;
# Lake has skills 3,6;
# Amelia has skills 2,3,4;
# Grace has skills 3,5,6;
# Tuba has skills 1,3,5,6;
# Ryan has skills 2,5,6;
# MinGi has skills 1,4,5;

INSERT INTO skills (skills_id,skill_name,skill_description,skill_tag,skill_url,skill_time_commitment) values
(1,'Professionlism','Someone with this skill knows how to act in a professional environment, and may be good for setting deals or making sales','Skill 1','Professionalism.com','4 years'),
(2,'Just Do It Attitude','Someone with this skill is likely to push ahead and start getting things done. This may come at the deteriment to planners.','Skill 1','LackOfForethought/com','N/A'),
(3,'Teamwork Skills','Someone with this skill knows how to work well in a team, and will always put the group ahead of the individual','Skill 2','WhatsGonnaWork.com','2 Years'),
(4,'Note-Taker','Someone with this skill will take notes and remeber things better. They will be more organized and better at making plans','Skill 1', 'Papermate.com','7 years'),
(5,'Playing Music','Someone with this skill is naturally gifted in music, by means of instrument or voice, this person can make beautiful sounds.','Skill 4','MusicalNotes.com','3 Years'),
(6,'Juggling','Someone with this skill has enough confidence and dexterity to juggle.','Skill 3','JugglingIsCool.com','8 years'),
(7,'Flying', 'Someone with this skill knows how to fly, and can easilly soar through the sky with ease','Skill 3','IBelieveIcan.com','2 years'),
(8,'Cartography','Someone with this skill is very good at making maps, and understands how to lay them out in  readble way','Skill 4','Podge.com','4 years'),
(9,'Animation Expert','Someone with this skill understands animation and its practices well enough to create animation','Skill 3','NobodyKnowsThisSkillHahaha.com', '11 years');

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(256) NOT NULL,
    people_last_name varchar(256) NOT NULL,
    people_email varchar(256),
    people_linkin_url varchar(256),
    people_headshot_url varchar(4096),
    people_discord_handel varchar(256),
    people_breif_bio varchar(4096),
    people_date_joined date NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with 10 people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id,people_first_name,people_last_name,people_email,people_linkin_url,people_headshot_url,people_discord_handel,people_breif_bio,people_date_joined) values
(1,'Atticus','Person 1','AttaboyCorg1@company.com','linkedin.com/denizens/AtticusCorgi','https://static.wikia.nocookie.net/animated-animals/images/e/e7/Atticus-Infinity-Train.jpg/revision/latest?cb=20201118214624','@KingAtticus','The king of the Corginian Corgis, and friend of Tulip', '2000-11-09'),
(2,'Tulip','Person 2','RosieGameDev101@company.com','linkedin.com/people/TulipOlsen', 'https://tv-fanatic-res.cloudinary.com/iu/s--0LB_5s4i--/t_full/cs_srgb,f_auto,fl_strip_profile.lossy,q_auto:420/v1619752628/tulip-infinity-train.jpg','@TulipInTheTapes','Just some kid trying to get off this dumb train so I can get back to my life.','2010-03-30'),
(3,'One-One','Person 3','Glad-One-Sad-One@company.com','linkedin.com/denizens/TrainConductorOneOne','https://static.wikia.nocookie.net/infinity-train/images/3/35/One-One_Render.png/revision/latest/scale-to-width/360?cb=20231022163412','@HeadsOfTheTrain','Former train conductor and current comedian duo, getting things back on the rails haha!','1456-01-01'),
(4,'Jesse','Person 4','JesseCosayyy@company.com','linkedin.com/people/JesseCosay','https://pbs.twimg.com/media/EmIs7uFU0AE1KC8.jpg:large','@AlanDracula','Just a kid here to make friends and have fun! Swim team member, and pal to anyone who needs one.','2011-05-15'),
(5,'Lake','Person 5','ChromeCasket@company.com','linkedin.com/denizens/people/Lake','https://static.wikia.nocookie.net/infinity-train/images/2/29/Lake_Blushing.jpg/revision/latest?cb=20200913034455','@AlanDracula2','Free from the mirror and here to make my own path, not a fan of trains.','2010-07-15'),
(6,'Amelia','Person 6','AmeliaTurtle@company.com','linkedin.com/people/AmeliaHughes','https://tv-fanatic-res.cloudinary.com/iu/s--BafhVtre--/f_auto,q_auto/v1619794301/amelia-infinity-train','@Turtlemancy','British engineer working to undo the mistakes Ive made. Trying to recover.','1977-02-14'),
(7,'Grace','Person 7','GraceMonroe@company.com','linkedin.com/people/GraceMonroe','https://assets.mycast.io/characters/grace-monroe-2506492-normal.jpg?1619966983','@DanceOfDeath','Former Dancer, Current Leader of an epic team. Currently working on amendments for the group.','2005-07-25'),
(8,'Tuba','Person 8','InstrumentMom@company.com','linkedin.com/denizens/Tuba','https://static.cdn.turner.com/styles/img_square_768_x_768/s3/2020-08/IT_EP03_Screengrab_02.jpg?itok=UmMeglCO','@InstrumentMom','Your average instrument animal just trying their best.','2006-08-03'),
(9,'Ryan','Person 9','RyanTheRockstar@company.com','linkedin.com/people/RyanAkagi', 'https://i.pinimg.com/736x/df/02/4e/df024e9e68be53df8737f3eecc554082.jpg','@RockstarRyan','Friend of Min-Gi and Kez, coolest train passenger around','1982-05-08'),
(10,'Min-Gi','Person 10','MinGiPark@company.com','linkedin.com/people/MinGiPark','https://pbs.twimg.com/media/ExBbRBOXEAAh-aM.jpg','@MinGiPark','Friend of Ryan and Kez. Former Dumptys Employee.','1982-05-08');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills(
    peopleskills_id int auto_increment NOT NULL,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_skill_aquired date NOT NULL,
    PRIMARY KEY (peopleskills_id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

insert Into peopleskills (people_id,skills_id,date_skill_aquired) values
(1,1,'2000-11-23'),
(1,3,'2003-10-20'),
(1,6,'2002-05-04'),
(2,3,'2006-04-01'),
(2,4,'1999-01-30'),
(2,5,'2010-05-14'),
(3,1,'2005-01-10'),
(3,5,'2001-12-25'),
(5,3,'2011-02-15'),
(5,6,'2016-08-17'),
(6,2,'1988-10-03'),
(6,3,'1994-04-29'),
(6,4,'2001-09-09'),
(7,3,'2004-07-01'),
(7,5,'2011-01-07'),
(7,6,'1995-05-02'),
(8,1,'1980-03-28'),
(8,3,'1981-04-29'),
(8,5,'2010-10-10'),
(8,6,'2005-12-02'),
(9,2,'1980-04-05'),
(9,5,'1999-07-09'),
(9,6,'2011-06-28'),
(10,1,'2008-11-11'),
(10,4,'2002-02-11'),
(10,5,'2004-08-04'); 

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

Create Table roles(
    role_id int auto_increment,
    role_name varchar(256),
    role_sort_priority varchar(256),
    PRIMARY KEY (role_id)
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

Insert Into roles (role_name,role_sort_priority) value
('Designer',10),
('Developer',20),
('Recruit',30),
('Team Lead',40),
('Boss',50),
('Mentor',60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

Create Table peopleroles(
    peoplerole_id int auto_increment,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_role_assigned date NOT NULL,
    PRIMARY KEY (peoplerole_id)
);



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer
# 1 Designer, 2 Developer, 3 Recruit, 4 Team Lead, 5 Boss, 6 Mentor

INSERT INTO peopleroles(people_id,role_id,date_role_assigned)value
(1,2,'2010-05-06'),
(2,5,'2011-06-07'),
(2,6,'2011-06-07'),
(3,2,'2013-08-09'),
(3,4,'2001-09-10'),
(4,3,'2002-08-11'),
(5,3,'2003-09-23'),
(6,1,'2006-10-24'),
(6,2,'2007-11-25'),
(7,1,'2008-12-06'),
(8,1,'2002-05-05'),
(8,4,'2003-09-26'),
(9,2,'2004-12-12'),
(10,2,'2003-01-04'),
(10,1,'2005-07-06');