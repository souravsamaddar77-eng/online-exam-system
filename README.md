# Online Examination System

This is a lightweight Java desktop application for the topic `Online Examination System`.
It uses only core Java and Swing, so there is no Maven, Gradle, database, or heavy framework required.

The project demonstrates the core workflows commonly expected in this topic:

- Admin login
- Student registration and login
- Exam creation
- Question management
- Exam participation
- Automatic evaluation
- Result history and pass/fail summary

## Project Structure

```text
src/
  com/onlineexam/
    Main.java
    model/
      Admin.java
      Exam.java
      ExamResult.java
      Question.java
      Student.java
    service/
      DataStore.java
      ExaminationService.java
    ui/
      OnlineExamFrame.java
build-jar.bat
run.bat
```

## Default Credentials

- Admin username: `admin`
- Admin password: `admin123`

Students can register from the main menu.

## How to Run

Run the desktop application:

```powershell
.\run.bat
```

Build the runnable jar:

```powershell
.\build-jar.bat
```

Run the jar after building:

```powershell
java -jar .\dist\OnlineExamSystem.jar
```

The scripts will:

1. Compile the Java source files into the `out` folder
2. Launch the desktop app or package it into `dist\OnlineExamSystem.jar`

## Features Included

- Ready-made sample exams
- Multiple-choice questions
- Marks and percentage calculation
- Pass/fail status
- Student-wise result tracking
- Admin result overview

## Future Improvements

- File or database storage
- Timer-based exam submission
- Web interface using Spring Boot
- Role-based authentication
- Random question generation

This starter is designed to be easy to understand, present, and extend.
