# import sqlite3

# # Connect to SQLite database
# conn = sqlite3.connect('school.db')
# cursor = conn.cursor()

# # Create tables if not exists
# cursor.execute('''
#     CREATE TABLE IF NOT EXISTS students (
#         id INTEGER PRIMARY KEY,
#         name TEXT NOT NULL,
#         age INTEGER,
#         grade INTEGER
#     )
# ''')

# cursor.execute('''
#     CREATE TABLE IF NOT EXISTS classes (
#         id INTEGER PRIMARY KEY,
#         class_name TEXT NOT NULL,
#         teacher TEXT
#     )
# ''')

# cursor.execute('''
#     CREATE TABLE IF NOT EXISTS attendance (
#         id INTEGER PRIMARY KEY,
#         student_id INTEGER NOT NULL,
#         class_id INTEGER NOT NULL,
#         attended_date DATE,
#         FOREIGN KEY (student_id) REFERENCES students (id),
#         FOREIGN KEY (class_id) REFERENCES classes (id)
#     )
# ''')

# # Insert sample data (optional)
# cursor.execute('''
#     INSERT INTO students (name, age, grade) VALUES
#     ('Alice', 15, 10),
#     ('Bob', 16, 11),
#     ('Charlie', 15, 10)
# ''')

# cursor.execute('''
#     INSERT INTO classes (class_name, teacher) VALUES
#     ('Mathematics', 'Mr. Johnson'),
#     ('Science', 'Ms. Smith'),
#     ('History', 'Mr. Brown')
# ''')

# # Commit changes and close connection
# conn.commit()
# conn.close()

# # Sample query
# conn = sqlite3.connect('school.db')
# cursor = conn.cursor()

# # Example query: Fetch all students
# cursor.execute('SELECT * FROM students')
# students = cursor.fetchall()
# print("Students:")
# for student in students:
#     print(student)

# # Close connection
# conn.close()


import sqlite3

# Connect to the SQLite database
conn = sqlite3.connect('school.db')
cursor = conn.cursor()

# Function to execute SQL queries from files
def execute_sql_from_file(sql_file):
    with open(sql_file, 'r') as file:
        sql_script = file.read()
        cursor.executescript(sql_script)
        conn.commit()

# Example usage to execute a query from a file
if __name__ == '__main__':
    sql_files = [
        'sql_queries/members_queries.sql',
        'sql_queries/equipment_queries.sql',
        # Add more query files as needed
    ]

    for sql_file in sql_files:
        execute_sql_from_file(sql_file)

    cursor.close()
    conn.close()


import sqlite3

# Function to execute SQL from file
def execute_sql_from_file(sql_file):
    with sqlite3.connect('school.db') as conn:
        cursor = conn.cursor()
        try:
            with open(sql_file, 'r') as f:
                sql_script = f.read()
                cursor.executescript(sql_script)
            print(f"Successfully executed SQL commands from {sql_file}")
        except sqlite3.IntegrityError as e:
            print(f"Error executing SQL from {sql_file}: {str(e)}")
            conn.rollback()  # Rollback any changes if an error occurs

# Example usage
if __name__ == "__main__":
    sql_file = '/path/to/members_queries.sql'  # Replace with your SQL file path
    execute_sql_from_file(sql_file)
