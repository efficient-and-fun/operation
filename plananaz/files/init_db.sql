-- SCHEMA: plananaz


--DROP SCHEMA IF EXISTS plananaz CASCADE;




CREATE SCHEMA IF NOT EXISTS plananaz
    AUTHORIZATION plananaz;



CREATE TABLE IF NOT EXISTS plananaz.Users (
	UserId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	UserName VARCHAR(255) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	UserPassword VARCHAR(255) NOT NULL,
	ProfilePicturePath TEXT NOT NULL,
	DietaryRestrictions TEXT,

	CONSTRAINT pk_Users PRIMARY KEY (UserId)
);


CREATE TABLE IF NOT EXISTS plananaz.ExternalEvents (
	EventId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	EventName VARCHAR(255) NOT NULL,
	Description TEXT,
	DateTimeFrom TIMESTAMPTZ NOT NULL,
	DateTimeTo TIMESTAMPTZ NOT NULL,
	EventLocation VARCHAR(255) NOT NULL,

	CONSTRAINT pk_Event PRIMARY KEY (EventId)
);


CREATE TABLE IF NOT EXISTS plananaz.MeetUps (
	MeetUpId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	MeetUpName VARCHAR(255) NOT NULL,
	Description TEXT,
	Checklist TEXT,
	DateTimeFrom TIMESTAMPTZ NOT NULL,
	DateTimeTo TIMESTAMPTZ NOT NULL,
	MeetUpLocation TEXT,

	CONSTRAINT pk_MeetUps PRIMARY KEY (MeetUpId)
);


CREATE TABLE IF NOT EXISTS plananaz.MeetUpsExternalEvents (
	MeetUpExternalEventId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	MeetUpId INT NOT NULL,
	EventId INT NOT NULL,

	CONSTRAINT pk_MeetUpsExternalEvents PRIMARY KEY (MeetUpExternalEventId),
	CONSTRAINT fk_MeetUpsExternalEvents_MeetUps
        FOREIGN KEY (MeetUpId)
        REFERENCES plananaz.MeetUps (MeetUpId),
	CONSTRAINT fk_MeetUpsExternalEvents_Event
        FOREIGN KEY (EventId)
        REFERENCES plananaz.ExternalEvents (EventId)
);


CREATE TABLE IF NOT EXISTS plananaz.FriendConnection (
	FriendConnectionId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	UserId INT NOT NULL,
	FriendId INT NOT NULL,
	HasAcceptedFriendRequest BOOLEAN NOT NULL,

	CONSTRAINT pk_FriendConnection PRIMARY KEY (FriendConnectionId),
	CONSTRAINT fk_FriendConnection_Users_User
        FOREIGN KEY (UserId)
        REFERENCES plananaz.Users (UserId),
	CONSTRAINT fk_FriendConnection_Users_FriendId
        FOREIGN KEY (FriendId)
        REFERENCES plananaz.Users (UserId)
);


CREATE TABLE IF NOT EXISTS plananaz.UserTags (
	UserTagId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	UserId INT NOT NULL,
	FriendId INT NOT NULL,
	Tagname TEXT NOT NULL,

	CONSTRAINT pk_UserTags PRIMARY KEY (UserTagId),
	CONSTRAINT fk_FriendConnection_Users_UserId
        FOREIGN KEY (UserId)
        REFERENCES plananaz.Users (UserId),
	CONSTRAINT fk_FriendConnection_Users_FriendId
        FOREIGN KEY (UserId)
        REFERENCES plananaz.Users (UserId)
);


CREATE TABLE IF NOT EXISTS plananaz.EventInterests (
	EventInterestId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	UserId INT NOT NULL,
	EventId INT NOT NULL,

	CONSTRAINT pk_EventInterests PRIMARY KEY (EventInterestId),
	CONSTRAINT fk_EventInterests_Users
        FOREIGN KEY (UserId)
        REFERENCES plananaz.Users (UserId),
	CONSTRAINT fk_EventInterests_ExternalEvents
        FOREIGN KEY (EventId)
        REFERENCES plananaz.ExternalEvents (EventId)
);


CREATE TABLE IF NOT EXISTS plananaz.Participations (
	ParticipationId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	UserId INT NOT NULL,
	MeetUpId INT NOT NULL,
	HasAcceptedInvitation BOOLEAN NOT NULL,
	HasAttended BOOLEAN NOT NULL,
	Rating INT,

	CONSTRAINT pk_Participations PRIMARY KEY (ParticipationId),
	CONSTRAINT fk_Participations_Users
        FOREIGN KEY (UserId)
        REFERENCES plananaz.Users (UserId),
	CONSTRAINT fk_Participations_MeetUps
        FOREIGN KEY (MeetUpId)
        REFERENCES plananaz.MeetUps (MeetUpId)
);


CREATE TABLE IF NOT EXISTS plananaz.Messages (
	MessageId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
	UserId INT NOT NULL,
	MeetUpId INT NOT NULL,
	Text TEXT NOT NULL,
	DateTime TIMESTAMPTZ NOT NULL,

	CONSTRAINT pk_Messages PRIMARY KEY (MessageId),
	CONSTRAINT fk_Messages_Users
        FOREIGN KEY (UserId)
        REFERENCES plananaz.Users (UserId),
	CONSTRAINT fk_Messages_MeetUps
        FOREIGN KEY (MeetUpId)
        REFERENCES plananaz.MeetUps (MeetUpId)
);


