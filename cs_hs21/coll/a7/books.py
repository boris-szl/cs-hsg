import sqlite3 as sql
import pandas as pd

# first we establish a connection with the database
connection = sql.connect('books.db')

# description of the database
# tables: authors, author_ISBN, titles

# set limit for columns to display
pd.options.display.max_columns = 10

pd.read_sql('SELECT * FROM authors', connection, index_col=['id'])



connection.close()
