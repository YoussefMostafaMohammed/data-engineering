import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="mydb",
    user="postgres",
    password="mypassword"
    )
cur = conn.cursor()

cur.execute("SELECT * FROM courses")
rows = cur.fetchall()

print("\nCourses table contents:")
for row in rows:
    print(row)

cur.close()
conn.close()

