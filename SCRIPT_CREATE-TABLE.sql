-- Таблиця студентів
CREATE TABLE IF NOT EXISTS Students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    group_id INTEGER,
    FOREIGN KEY (group_id) REFERENCES Groups(group_id)
);

-- Таблиця груп
CREATE TABLE IF NOT EXISTS Groups (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name TEXT NOT NULL
);

-- Таблиця викладачів
CREATE TABLE IF NOT EXISTS Teachers (
    teacher_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

-- Таблиця предметів
CREATE TABLE IF NOT EXISTS Subjects (
    subject_id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject_name TEXT NOT NULL,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- Таблиця оцінок
CREATE TABLE IF NOT EXISTS Grades (
    grade_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    subject_id INTEGER,
    grade INTEGER NOT NULL,
    grade_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
