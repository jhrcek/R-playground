CREATE TABLE artists (
  artist_id INTEGER PRIMARY KEY,
  name TEXT,
  born_on INTEGER
);

CREATE TABLE paintings (
  painting_id INTEGER PRIMARY KEY,
  painting_artist INTEGER,
  painting_name TEXT,
  year_completed INTEGER,
  FOREIGN KEY(painting_artist) REFERENCES artists(artist_id)
);

INSERT INTO artists(name, born_on)
VALUES
("Kay Sage", 1898),
("Piet Mondrian", 1872),
("Rene Magritte", 1898),
("May Ray", 1890),
("Jean-Mitchel Basquiat", 1960);

INSERT INTO paintings(painting_artist, painting_name, year_completed)
VALUES
(4,"Orquesta Sinfonica",1916),
(4,"La Fortune",1938),
(1,"Tomorrow is Never",1955),
(1,"The Ansewer is No",1958),
(1,"No Passing",1954),
(5,"Bird on Money",1981),
(2,"Place de la Concorde",1943),
(2,"Composition No. 10",1942),
(3,"The Human Condition",1935),
(3,"The Treachery of Images",1948),
(3,"The Son of Man",1964);

