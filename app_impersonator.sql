/* What does the app's SQL look like? */

CREATE TABLE daily_yoga_app (
    id INTEGER PRIMARY KEY, 
    workout_name TEXT,
    duration INTEGER,
    feeling TEXT);
    
INSERT INTO daily_yoga_app (workout_name, duration, feeling) 
    VALUES ("Full Body Easy Stretches", 18, "Awesome");
INSERT INTO daily_yoga_app (workout_name, duration, feeling) 
    VALUES ("Lower Back Pain Relief", 10, "Challenging");
INSERT INTO daily_yoga_app (workout_name, duration, feeling) 
    VALUES ("Beginner Spinal Flexibility", 14, "Awesome");
    
SELECT * FROM daily_yoga_app;

UPDATE daily_yoga_app SET duration = 20 WHERE workout_name = "Beginner Spinal Flexibility";

SELECT * FROM daily_yoga_app;

DELETE FROM daily_yoga_app WHERE id = 1;

SELECT * FROM daily_yoga_app;

