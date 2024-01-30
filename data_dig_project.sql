/* Put your data in here and query it! */

CREATE TABLE badges (
    date TEXT,
    badge_type TEXT,
    badge_name TEXT,
    energy_points INTEGER
);

INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 04/12", "Sun", "Oracle", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 04/28", "Earth", "Incredible Inspiration", 5000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 01/29", "Challenge Patch", "Intro to JS: Drawing & Animation Mastery", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2014, 12/05", "Meteorite", "Thumbs Up", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 04/28", "Moon", "1000 Kelvin", 1000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 04/25", "Earth", "299,792,458 Meters per Second", 5000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 03/20", "Sun", "Da Vinci", 200000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 03/02", "Sun", "Newton", 150000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 03/02", "Sun", "Hypatia", 125000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 02/24", "Sun", "Kepler", 125000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 02/24", "Sun", "Copernicus", 80000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 02/07", "Sun", "Sally Ride", 35000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 01/06", "Sun", "Magellan", 30000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 02/24", "Earth", "Guru", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2014, 12/29", "Earth", "Work Horse", 14000);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2014, 10/20", "Moon", "Redwood", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2013, 10/20", "Meteorite", "Cypress", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 03/18", "Sun", "Millionaire", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 02/27", "Earth", "Five Times Ten to the Fifth", 0);
INSERT INTO badges (date, badge_type, badge_name, energy_points) VALUES ("2015, 04/04", "Earth", "Investigator", 0);

/* What are average, max, and min values in the data? */
SELECT MIN(energy_points) AS "Lowest Points", MAX(energy_points) AS "Highest Points", AVG(energy_points) AS "Average Points"
FROM badges;

/* What about those numbers per category in the data (using HAVING)? */
SELECT COUNT(energy_points), badge_type
FROM badges
GROUP BY badge_type
HAVING COUNT(energy_points) > 1;

/*What ways are there to group the data values that don’t exist yet (using CASE)? */
SELECT badge_name, energy_points,
CASE
WHEN energy_points >= 5000 THEN "KHAN GOLD STATUS"
WHEN energy_points >= 1000 THEN 
"KHAN SILVER STATUS"
ELSE "KHAN MEMBER INACTIVE"
END as "khan_level"
FROM badges
ORDER BY energy_points DESC;

/* What interesting ways are there to filter the data (using AND/OR)? */
SELECT * FROM badges WHERE badge_type = "Sun" AND energy_points > 5000;

SELECT badge_name, badge_type FROM badges WHERE badge_type = "Challenge Patch" OR badge_type = "Earth";

/* SORT */
SELECT badge_name, energy_points
FROM badges WHERE energy_points > 0 ORDER BY energy_points DESC;
