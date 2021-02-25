CREATE TABLE "professor" (
  "professor_id" char(5),
  "name" varchar(255),
  "department" varchar(255),
  PRIMARY KEY ("professor_id")
);

CREATE TABLE "course" (
  "course_id" char(7),
  "name" varchar(255),
  "section" char(1),
  PRIMARY KEY ("course_id")
);

CREATE TABLE "teaches" (
  "semester_id" char(5),
  "professor_id" char(5),
  "course_id" char(7),
  "start_date" date,
  "end_date" date,
  PRIMARY KEY ("semester_id"),
  FOREIGN KET ("professor-id") REFERENCES professor("professor_id"),
  FOREIGN KET ("course-id") REFERENCES course("course_id"),
);
