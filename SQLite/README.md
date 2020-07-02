# Working with SQLite from R

```bash
# Initialize database with sample data
sqlite3 art.db <art.sql 
sqlite3 art.db 'SELECT * from artists;'
sqlite3 art.db 'SELECT * from paintings;'
```

In R install DBI and RSQLite packages

```R
#Install DBI and RSQLite
install.packages(c("DBI", "RSQLite"))

# Load the packages
library(DBI)
library(RSQLite)

# List functions provided by package
lsf.str("package:RSQLite")

# Load the data
art_db <- dbConnect(RSQLite::SQLite(), "./art.db")

# List tables
dbListTables(art_db)

# query data
result <- dbSendQuery(art_db, "SELECT paintings.painting_name, artists.name FROM paintings INNER JOIN artists ON paintings.painting_artist=artists.artist_id;")
response <- fetch(result)
head(response)
dbClearResult(result)

result <- dbSendQuery(art_db,
  "SELECT paintings.year_completed, artists.born_on
   FROM paintings INNER JOIN artists
   ON paintings.painting_artist=artists.artist_id;")
response <- fetch(result)
head(response)
dbClearResult(result)

# close connection
dbDisconnect(art_db)
```
