import mysql.connector
from mysql.connector import Error

conn = mysql.connector.connect(
    host="localhost",
    database="sakila",
    user="root",
    password="mypassword"
)


cur=conn.cursor()

cur.execute("SELECT * FROM actor")

rows=cur.fetchall()
for row in rows:
    print(row)

cur.close()
conn.close()
