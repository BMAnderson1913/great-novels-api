CREATE DATABASE greatNovels;

CREATE USER 'novels'@'localhost' IDENTIFIED
WITH mysql_native_password BY 'n0v31s!';

GRANT ALL ON greatNovels.* TO 'novels'@'localhost';

USE greatNovels;

CREATE TABLE authors
(
  id INT
  auto_increment, 
  firstName VARCHAR
  (255),
  lastName VARCHAR
  (255),
  createdAt DATETIME DEFAULT NOW
  (),
  updatedAt DATETIME DEFAULT NOW
  () ON
  UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY
  (id)
);

  CREATE TABLE genres
  (
    id INT
    auto_increment,
  name VARCHAR
    (255),
  createdAt DATETIME DEFAULT NOW
    (),
  updatedAt DATETIME DEFAULT NOW
    () ON
    UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY
    (id)
);

    CREATE TABLE novels
    (
      id INT
      auto_increment, 
  title VARCHAR
      (255),
  authorId INT,
  createdAt DATETIME DEFAULT NOW
      (),
  updatedAt DATETIME DEFAULT NOW
      () ON
      UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY
      (id),
  FOREIGN KEY
      (authorId) REFERENCES authors
      (id)
);

      CREATE TABLE novelsGenres
      (
        genreId INT,
        novelId INT,
        createdAt DATETIME DEFAULT NOW(),
        updatedAt DATETIME DEFAULT NOW()
        on
        UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY
        (genreId, novelId)
);

        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Bram", "Stoker");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Oscar", "Wilde");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Alice", "Walker");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Leo", "Tolstoy");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Charles", "Dickens");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Arthur", "Miller");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Alexandre", "Dumas");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Arthur", "Conan Doyle");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Robert Louis", "Stevenson");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Fyodor", "Dostoyevsky");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Agatha", "Christie");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Ray", "Bradbury");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("George", "Orwell");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("H.G.", " Wells");
        INSERT INTO authors
          (firstName, lastName)
        VALUES
          ("Chinua", "Achebe");

        INSERT INTO genres
          (name)
        VALUES
          ("Adventure");
        INSERT INTO genres
          (name)
        VALUES
          ("African Literature");
        INSERT INTO genres
          (name)
        VALUES
          ("Crime");
        INSERT INTO genres
          (name)
        VALUES
          ("Drama");
        INSERT INTO genres
          (name)
        VALUES
          ("Dystopia");
        INSERT INTO genres
          (name)
        VALUES
          ("Fantasy");
        INSERT INTO genres
          (name)
        VALUES
          ("Fiction");
        INSERT INTO genres
          (name)
        VALUES
          ("French Literature");
        INSERT INTO genres
          (name)
        VALUES
          ("Gothic");
        INSERT INTO genres
          (name)
        VALUES
          ("Historical Fiction");
        INSERT INTO genres
          (name)
        VALUES
          ("Horror");
        INSERT INTO genres
          (name)
        VALUES
          ("Mystery");
        INSERT INTO genres
          (name)
        VALUES
          ("Plays");
        INSERT INTO genres
          (name)
        VALUES
          ("Russian Literature");
        INSERT INTO genres
          (name)
        VALUES
          ("Science Fiction");
        INSERT INTO genres
          (name)
        VALUES
          ("Thriller");
        INSERT INTO genres
          (name)
        VALUES
          ("Time Travel");
        INSERT INTO genres
          (name)
        VALUES
          ("War");

        INSERT INTO novels
          (title, authorId)
        VALUES
          ("Dracula", 1);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Picture of Dorian Gray", 2);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Color Purple", 3);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("War and Peace", 4);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("A Tale of Two Cities", 5);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Crucible", 6);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Three Musketeers", 7);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Hound of the Baskervilles", 8);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Strange Case of Dr. Jekyll and Mr. Hyde", 9);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("Crime and Punishment", 10);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("Murder on the Orient Express", 11);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("Fahrenheit 451", 12);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("Animal Farm", 13);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("The Time Machine", 14);
        INSERT INTO novels
          (title, authorId)
        VALUES
          ("Things Fall Apart", 15);

        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (1, 7),
          (1, 11),
          (1, 6);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (2, 7),
          (2, 11),
          (2, 9),
          (2, 6);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (3, 7),
          (3, 10);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (4, 7),
          (4, 10),
          (4, 18),
          (4, 14);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (5, 7),
          (5, 10);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (6, 7),
          (6, 10),
          (6, 4),
          (6, 13);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (7, 7),
          (7, 10),
          (7, 1),
          (7, 8);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (8, 7),
          (8, 12),
          (8, 3),
          (8, 16);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (9, 7),
          (9, 12),
          (9, 15),
          (9, 11);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (10, 7),
          (10, 14),
          (10, 12);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (11, 7),
          (11, 12);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (12, 7),
          (12, 15),
          (12, 5);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (13, 7),
          (13, 15),
          (13, 5);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (14, 7),
          (14, 15),
          (14, 17);
        INSERT INTO novelsGenres
          (novelId, genreId)
        VALUES
          (15, 7),
          (15, 10),
          (15, 2);

