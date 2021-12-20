import mysql.connector
from mysql.connector import errorcode
# Connect to the MySQL database
try:
   mydb = mysql.connector.connect(
      user="root",
      password="root",
      host="localhost",
      database="schoolmanagement")

except mysql.connector.Error as err:
   if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
      print("Invalid credentials")
   elif err.errno == errorcode.ER_BAD_DB_ERROR:
      print("Database not found")
   else:
      print("Cannot connect to database:", err)

else:
   
    cursor = mydb.cursor()
# Retreive all tables Infomration using the below code
    q1 = ("SELECT * FROM student") 
    cursor.execute(q1)
    print("------Student Table-------\n")
    for row in cursor.fetchall():
        
        print(row,"\n")

    q2 = ("SELECT * FROM subjects") 
    cursor.execute(q2)
    print("------Subjects Table ------------\n")
    for row in cursor.fetchall():
        
        print(row,"\n")
    
    q3 = ("SELECT * FROM courses") 
    cursor.execute(q3)
    print("-----Courses Table--------\n")
    for row in cursor.fetchall():
        
        print(row,"\n")
    q4 = ("SELECT * FROM schedule") 
    cursor.execute(q4)
    print("-----Schedule Table---------\n")
    for row in cursor.fetchall():
        
        print(row,"\n")
    q5 = ("SELECT * FROM transaction") 
    cursor.execute(q5)
    print("-----insurance Table---------\n")
    for row in cursor.fetchall():
        
        print(row,"\n")
    q6 = ("SELECT * FROM instructor") 
    cursor.execute(q6)
    print("-----Instructor  Table--------\n")
    for row in cursor.fetchall():
        
        print(row,"\n")
