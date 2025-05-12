create database virtualartgallery;
use virtualartgallery;


CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(100),
    Biography TEXT,
    BirthDate DATE,
    Nationality VARCHAR(50),
    Website VARCHAR(100),
    ContactInfo VARCHAR(100)
);


CREATE TABLE Artwork (
    ArtworkID INT PRIMARY KEY,
    Title VARCHAR(100),
    Description TEXT,
    CreationDate DATE,
    Medium VARCHAR(50),
    ImageURL VARCHAR(200),
    ArtistID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);

CREATE TABLE User (
    UserID INT PRIMARY KEY auto_increment,
    Username VARCHAR(50),
    Password VARCHAR(50),
    Email VARCHAR(100),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ProfilePicture VARCHAR(200)
);


CREATE TABLE Gallery (
    GalleryID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Location VARCHAR(100),
    CuratorID INT,
    OpeningHours VARCHAR(100),
    FOREIGN KEY (CuratorID) REFERENCES Artist(ArtistID)
);


CREATE TABLE User_Favorite_Artwork (
    UserID INT,
    ArtworkID INT,
    PRIMARY KEY (UserID, ArtworkID),
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID)
);


CREATE TABLE Artwork_Gallery (
    ArtworkID INT,
    GalleryID INT,
    PRIMARY KEY (ArtworkID, GalleryID),
    FOREIGN KEY (ArtworkID) REFERENCES Artwork(ArtworkID),
    FOREIGN KEY (GalleryID) REFERENCES Gallery(GalleryID)
);

INSERT INTO Artist VALUES 
(1, 'Leonardo da Vinci', 'Renaissance artist', '1452-04-15', 'Italian', 'https://leonardo.art', 'leonardo@art.com'),
(2, 'Vincent van Gogh', 'Post-impressionist painter', '1853-03-30', 'Dutch', 'https://vangogh.art', 'vincent@art.com'),
(3, 'Pablo Picasso', 'Cubist pioneer', '1881-10-25', 'Spanish', 'https://picasso.art', 'picasso@art.com'),
(4, 'Frida Kahlo', 'Mexican painter', '1907-07-06', 'Mexican', 'https://frida.art', 'frida@art.com'),
(5, 'Claude Monet', 'Impressionist painter', '1840-11-14', 'French', 'https://monet.art', 'monet@art.com');

INSERT INTO Artwork VALUES 
(701, 'Mona Lisa', 'Portrait of Lisa Gherardini', '1503-10-01', 'Oil on wood', 'https://gallery.com/monalisa.jpg', 1),
(702, 'Starry Night', 'A night sky swirling with stars', '1889-06-01', 'Oil on canvas', 'https://gallery.com/starrynight.jpg', 2),
(703, 'Guernica', 'Depiction of the horrors of war', '1937-06-01', 'Oil on canvas', 'https://gallery.com/guernica.jpg', 3),
(704, 'The Two Fridas', 'Double self-portrait', '1939-01-01', 'Oil on canvas', 'https://gallery.com/fridas.jpg', 4),
(705, 'Water Lilies', 'Series of lily pond paintings', '1906-01-01', 'Oil on canvas', 'https://gallery.com/waterlilies.jpg', 5);


INSERT INTO User VALUES 
(601,'artlover1', 'pass123', 'alex@email.com', 'Alex', 'Smith', '1990-01-01', 'https://gallery.com/profiles/alex.jpg'),
(602,'galleryguru', 'secure456', 'jane@email.com', 'Jane', 'Doe', '1985-05-15', 'https://gallery.com/profiles/jane.jpg'),
(603,'paintfan', 'art789', 'liam@email.com', 'Liam', 'Brown', '1992-11-20', 'https://gallery.com/profiles/liam.jpg'),
(604,'canvasqueen', 'queen456', 'emma@email.com', 'Emma', 'White', '1988-09-09', 'https://gallery.com/profiles/emma.jpg'),
(605,'picassolover', 'blueperiod', 'oliver@email.com', 'Oliver', 'Gray', '1995-03-03', 'https://gallery.com/profiles/oliver.jpg');


INSERT INTO Gallery VALUES 
(201, 'Renaissance Wonders', 'Featuring Renaissance masterpieces', 'Florence, Italy', 1, '09:00-18:00'),
(202, 'Impressionist Paradise', 'Monet and his contemporaries', 'Paris, France', 5, '10:00-17:00'),
(203, 'Modern Marvels', 'Showcasing modern art pieces', 'New York, USA', 3, '11:00-19:00'),
(204, 'Mexican Magic', 'Mexican art and folklore', 'Mexico City, Mexico', 4, '08:00-16:00'),
(205, 'Dutch Masters', 'Works of van Gogh and peers', 'Amsterdam, Netherlands', 2, '10:30-18:30');


INSERT INTO User_Favorite_Artwork VALUES 
(501, 101),
(502, 102),
(503, 103),
(504, 104),
(505, 105);


INSERT INTO Artwork_Gallery VALUES 
(101, 201),
(102, 205),
(103, 203),
(104, 204),
(105, 202);
