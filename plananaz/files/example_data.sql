SET SEARCH_PATH TO 'plananaz';

insert into Users (username, email, userpassword, profilepicturepath, dietaryrestrictions) 
values ('Dustin', 'fiechdus@students.zhaw.ch', 'NotHashedPassword', 'C:\test\path\', null);

insert into MeetUps (Meetupname, Description, Checklist, DateTimeFrom, DateTimeTo, Meetuplocation) 
values ('first meetup', 'my very first meetup', null, '2025-04-13 00:00', '2025-04-13 21:29', 'bim dustin di hai'),
('second meetup', 'my second meetup', null, '2025-04-14 00:00', '2025-04-14 21:29', 'bim Min Khanh di hai'),
('third meetup', 'my third meetup', null, '2025-04-15 18:00', '2025-04-15 21:29', 'bim sascha di hai');
('Open Air Cinema', 'Enjoy a movie under the stars in the city park.', null, '2025-07-15 20:30', '2025-07-15 23:00', 'Stadtpark Zürich'),
('Tech Meetup Bern', 'A chance for tech enthusiasts to meet and share ideas.', null, '2025-05-10 18:00', '2025-05-10 20:00', 'Impact Hub Bern'),
('Jazz Festival Basel', 'Live performances from international jazz artists.', null, null, null, 'Kunsthalle Basel'),
('Food Truck Fiesta', 'Street food from around the world.', null, '2025-06-01 12:00', '2025-06-01 22:00', 'Limmatquai, Zürich'),
('Hackathon Weekend', 'A 48-hour coding marathon to build innovative solutions.', null, '2025-08-01 09:00', '2025-08-03 18:00', 'ETH Zurich'),
('Art Exhibition Opening', null, null, '2025-07-25 18:00', '2025-07-25 21:00', 'Zurich Art Museum');
('Spring Into Tech', 'Kick off spring with a meetup for tech enthusiasts at the Innovation Hub.', NULL, '2025-04-25 18:00', '2025-04-25 20:00', 'Innovation Hub Zürich'),
('Art & Wine Evening', 'Enjoy a selection of wines while admiring local artworks.', NULL, '2025-04-27 18:00', '2025-04-27 20:00', 'Gallery Noir'),
('Sunset Yoga', 'Relax with a guided yoga session by the shores of Lake Zürich.', NULL, '2025-04-29 18:00', '2025-04-29 20:00', 'Lake Zürich Shore'),
('Labour Day Social', 'Celebrate Labour Day with drinks and casual networking.', NULL, '2025-05-01 18:00', '2025-05-01 20:00', 'City Plaza'),
('Startup Networking', 'Connect with startup founders and investors.', NULL, '2025-05-03 18:00', '2025-05-03 20:00', 'Tech Loft'),
('Cinco de Mayo Fiesta', 'Celebrate Cinco de Mayo with Mexican food and music.', NULL, '2025-05-05 18:00', '2025-05-05 20:00', 'Casa Mexicana'),
('Midweek Book Club', 'Discuss this month’s book pick with fellow readers.', NULL, '2025-05-07 18:00', '2025-05-07 20:00', 'Old Town Library'),
('Photography Walk', 'Capture the beauty of the city on a guided photo walk.', NULL, '2025-05-09 18:00', '2025-05-09 20:00', 'Altstadt'),
('Poetry Slam Night', 'Watch and perform original poetry at Café Literar.', NULL, '2025-05-11 18:00', '2025-05-11 20:00', 'Café Literar'),
('Bike Tour', 'Join a scenic bike tour up to Uetliberg.', NULL, '2025-05-13 18:00', '2025-05-13 20:00', 'Uetliberg Trailhead'),
('Board Game Night', 'Play a variety of board games with fellow gamers.', NULL, '2025-05-15 18:00', '2025-05-15 20:00', 'Geek Bar'),
('Coding Dojo', 'Participate in coding challenges in a collaborative environment.', NULL, '2025-05-17 18:00', '2025-05-17 20:00', 'Hackerspace Zürich'),
('Film Society Screening', 'Enjoy an independent film screening and discussion.', NULL, '2025-05-19 18:00', '2025-05-19 20:00', 'CineMotion'),
('Garden Potluck', 'Bring a dish to share in the Botanical Garden.', NULL, '2025-05-21 18:00', '2025-05-21 20:00', 'Botanical Garden'),
('Open Mic Music', 'Showcase your musical talents or enjoy local acts.', NULL, '2025-05-23 18:00', '2025-05-23 20:00', 'Jazz Club Zürich'),
('Language Exchange', 'Practice languages with native speakers in a casual setting.', NULL, '2025-05-25 18:00', '2025-05-25 20:00', 'Multilingo Café'),
('Hiking Meetup', 'Hike the trails around Säntis and enjoy panoramic views.', NULL, '2025-05-27 18:00', '2025-05-27 20:00', 'Säntis Base Camp'),
('Philosophy Roundtable', 'Engage in thoughtful discussions on philosophical topics.', NULL, '2025-05-29 18:00', '2025-05-29 20:00', 'University Café'),
('Stargazing Party', 'Observe the stars through telescopes at the Zürich Observatory.', NULL, '2025-05-31 21:00', '2025-05-31 23:00', 'Zürich Observatory'),
('Beach Volleyball', 'Join a fun volleyball game at Horgen Beach.', NULL, '2025-06-02 18:00', '2025-06-02 20:00', 'Horgen Beach'),
('Tech Talk Tuesday', 'Hear about the latest tech trends from guest speakers.', NULL, '2025-06-04 18:00', '2025-06-04 20:00', 'ZHAW Campus'),
('Culinary Workshop', 'Learn to cook gourmet dishes in our hands-on workshop.', NULL, '2025-06-06 18:00', '2025-06-06 20:00', 'Cooking Lab'),
('Yoga in the Park', 'Practice yoga outdoors surrounded by nature.', NULL, '2025-06-08 18:00', '2025-06-08 20:00', 'Seefeld Park'),
('Charity Run', 'Participate in a 5K run to support local charities.', NULL, '2025-06-10 09:00', '2025-06-10 11:00', 'Lake Promenade'),
('Photography Exhibit', 'Explore stunning photographs at the Kunsthaus Zürich.', NULL, '2025-06-12 18:00', '2025-06-12 20:00', 'Kunsthaus Zürich'),
('Chess Tournament', 'Compete in a friendly chess tournament.', NULL, '2025-06-14 18:00', '2025-06-14 20:00', 'Central Chess Club'),
('Salsa Night', 'Dance the night away with salsa lessons and music.', NULL, '2025-06-16 20:00', '2025-06-16 22:00', 'Latino Bar'),
('Startup Pitch', 'Pitch your startup idea to a panel of experts.', NULL, '2025-06-18 18:00', '2025-06-18 20:00', 'Impact Hub'),
('Music Festival Warmup', 'Get ready for summer with live performances.', NULL, '2025-06-20 18:00', '2025-06-20 20:00', 'Riverside Stage'),
('Beach Cleanup', 'Help clean up Mythenquai beach and protect our environment.', NULL, '2025-06-22 10:00', '2025-06-22 12:00', 'Mythenquai'),
('Coders Retreat', 'Immerse yourself in coding sessions with peers.', NULL, '2025-06-24 09:00', '2025-06-24 17:00', 'Steamship Hall'),
('Wine Tasting', 'Sample a variety of wines at a local vineyard estate.', NULL, '2025-06-26 18:00', '2025-06-26 20:00', 'Vineyard Estate'),
('Artisan Market', 'Browse handmade goods at the Old Town Square market.', NULL, '2025-06-28 10:00', '2025-06-28 16:00', 'Old Town Square'),
('Summer Sendoff Party', 'Celebrate the start of summer with DJs and drinks.', NULL, '2025-06-30 18:00', '2025-06-30 21:00', 'Sechseläutenplatz');

insert into Participations (userid, meetupid, hasacceptedinvitation, hasattended, rating)
values (1, 1, true, true, 0),
(1, 2, true, true, 0);
(1, 3, true, true, 0);
(1, 4, true, true, 0);
(1, 5, true, true, 0);
(1, 6, true, true, 0);
(1, 7, true, true, 0);
(1, 8, true, true, 0);
(1, 9, true, true, 0);
(1, 10, true, true, 0);
(1, 11, true, true, 0);
(1, 12, true, true, 0);
(1, 13, true, true, 0);
(1, 14, true, true, 0);
(1, 15, true, true, 0);
(1, 16, true, true, 0);
(1, 17, true, true, 0);
(1, 18, true, true, 0);
(1, 19, true, true, 0);
(1, 20, true, true, 0);
(1, 21, true, true, 0);
(1, 22, true, true, 0);
(1, 23, true, true, 0);
(1, 24, true, true, 0);
(1, 25, true, true, 0);
(1, 26, true, true, 0);
(1, 27, true, true, 0);
(1, 28, true, true, 0);
(1, 29, true, true, 0);
(1, 30, true, true, 0);
(1, 31, true, true, 0);
(1, 32, true, true, 0);
(1, 33, true, true, 0);
(1, 34, true, true, 0);
(1, 35, true, true, 0);
(1, 36, true, true, 0);
(1, 37, true, true, 0);
(1, 38, true, true, 0);
(1, 39, true, true, 0);
(1, 40, true, true, 0);
(1, 41, true, true, 0);
(1, 42, true, true, 0);
(1, 43, true, true, 0);