install.packages("RSQLite")
library(RSQLite)

db <- dbConnect(SQLite(), dbname = "my_database.sqlite")

dbExecute(db, "CREATE TABLE pizza_menu (
                 id INTEGER PRIMARY KEY,
                 name TEXT NOT NULL,
                 price REAL NOT NULL
               )")

dbExecute(db, "INSERT INTO pizza_menu (name, price) VALUES 
                ('Margherita', 350),
                ('Pepperoni', 400),
                ('Hawaiian', 375),
                ('Veggie', 325),
                ('BBQ Chicken', 450)")

pizza_data <- dbGetQuery(db, "SELECT * FROM pizza_menu")
print(pizza_data)

dbDisconnect(db)
