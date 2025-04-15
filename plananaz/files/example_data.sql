SET SEARCH_PATH TO 'plananaz';

insert into Users (username, email, userpassword, profilepicturepath, dietaryrestrictions) 
values ('Dustin', 'fiechdus@students.zhaw.ch', 'NotHashedPassword', 'C:\test\path\', null);

insert into Participations (userid, meetupid, hasacceptedinvitation, hasattended, rating)
values (2, 1, true, false, 0),
(2, 2, false, false, 0);

insert into MeetUps (Meetupname, Description, Checklist, DateTimeFrom, DateTimeTo, Meetuplocation) 
values ('first meetup', 'my very first meetup', null, '2025-04-13 00:00', '2025-04-13 21:29', 'bim dustin di hai'),
('second meetup', 'my second meetup', null, '2025-04-14 00:00', '2025-04-14 21:29', 'bim Min Khanh di hai'),
('third meetup', 'my third meetup', null, '2025-04-15 18:00', '2025-04-15 21:29', 'bim sascha di hai');