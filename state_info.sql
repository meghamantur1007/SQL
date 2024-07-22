create database state;
CREATE TABLE state_info (state_id int,state_name varchar(50),capital varchar(50),population int,area float,
literacy_rate float,official_language varchar(50),established_date date,governor varchar(50),chief_minister varchar(50));

select * from state_info;
ALTER TABLE state_info ADD COLUMN tourism_rating INT,ADD COLUMN gdp FLOAT,ADD COLUMN famous_landmark VARCHAR(100),ADD COLUMN iso_code VARCHAR(10), ADD COLUMN timezone VARCHAR(50);
ALTER TABLE state_info RENAME COLUMN state_name TO state_full_name,RENAME COLUMN established_date TO formation_date,RENAME COLUMN literacy_rate TO education_rate, RENAME COLUMN official_language TO main_language, RENAME COLUMN chief_minister TO cm_name;
ALTER TABLE state_info MODIFY population BIGINT,MODIFY education_rate DECIMAL(5, 2),MODIFY area DOUBLE PRECISION,MODIFY gdp DOUBLE PRECISION,MODIFY tourism_rating SMALLINT;

INSERT INTO state_info VALUES(1, 'Karnataka', 'Bengaluru', 67562686, 191791, 75.36, 'Kannada', '1956-11-01', 'Thawar Chand Gehlot', 'Siddaramaiah', 4, 251.98, 'Mysore Palace', 'KA', 'IST');
INSERT INTO state_info VALUES(2, 'Maharashtra', 'Mumbai', 123144223, 307713, 82.34, 'Marathi', '1960-05-01', 'Bhagat Singh Koshyari', 'Eknath Shinde', 5, 400.01, 'Gateway of India', 'MH', 'IST');
INSERT INTO state_info VALUES(3, 'Tamil Nadu', 'Chennai', 77841267, 130058, 80.09, 'Tamil', '1956-11-01', 'R. N. Ravi', 'M. K. Stalin', 4, 320.15, 'Marina Beach', 'TN', 'IST');
INSERT INTO state_info VALUES(4, 'Uttar Pradesh', 'Lucknow', 199812341, 240928, 67.68, 'Hindi', '1950-01-26', 'Anandiben Patel', 'Yogi Adityanath', 3, 150.67, 'Taj Mahal', 'UP', 'IST');
INSERT INTO state_info VALUES(5, 'Gujarat', 'Gandhinagar', 63872399, 196024, 78.03, 'Gujarati', '1960-05-01', 'Acharya Devvrat', 'Bhupendra Patel', 4, 210.45, 'Statue of Unity', 'GJ', 'IST');
INSERT INTO state_info VALUES(6, 'Rajasthan', 'Jaipur', 81032689, 342239, 66.11, 'Hindi', '1956-11-01', 'Kalraj Mishra', 'Ashok Gehlot', 4, 180.33, 'Hawa Mahal', 'RJ', 'IST');
INSERT INTO state_info VALUES(7, 'West Bengal', 'Kolkata', 99609303, 88752, 77.08, 'Bengali', '1950-01-26', 'C. V. Ananda Bose', 'Mamata Banerjee', 3, 150.89, 'Victoria Memorial', 'WB', 'IST');
INSERT INTO state_info VALUES(8, 'Madhya Pradesh', 'Bhopal', 85358965, 308252, 70.63, 'Hindi', '1956-11-01', 'Mangubhai C. Patel', 'Shivraj Singh Chouhan', 4, 170.75, 'Khajuraho Temples', 'MP', 'IST');
INSERT INTO state_info VALUES(9, 'Bihar', 'Patna', 104099452, 94163, 63.82, 'Hindi', '1950-01-26', 'Rajendra Arlekar', 'Nitish Kumar', 2, 90.54, 'Mahabodhi Temple', 'BR', 'IST');
INSERT INTO state_info VALUES(10, 'Andhra Pradesh', 'Amaravati', 49577103, 162968, 67.41, 'Telugu', '2014-06-02', 'S. Abdul Nazeer', 'Y. S. Jagan Mohan Reddy', 3, 130.76, 'Tirupati Temple', 'AP', 'IST');
INSERT INTO state_info VALUES(11, 'Telangana', 'Hyderabad', 35003674, 112077, 66.54, 'Telugu', '2014-06-02', 'Tamilisai Soundararajan', 'K. Chandrashekar Rao', 4, 150.89, 'Charminar', 'TG', 'IST');
INSERT INTO state_info VALUES(12, 'Kerala', 'Thiruvananthapuram', 34571872, 38852, 96.2, 'Malayalam', '1956-11-01', 'Arif Mohammad Khan', 'Pinarayi Vijayan', 4, 110.33, 'Backwaters', 'KL', 'IST');
INSERT INTO state_info VALUES(13, 'Punjab', 'Chandigarh', 27743338, 50362, 75.84, 'Punjabi', '1966-11-01', 'Banwarilal Purohit', 'Bhagwant Mann', 4, 95.54, 'Golden Temple', 'PB', 'IST');
INSERT INTO state_info VALUES(14, 'Haryana', 'Chandigarh', 25353081, 44212, 75.55, 'Hindi', '1966-11-01', 'Bandaru Dattatreya', 'Manohar Lal Khattar', 3, 95.45, 'Surajkund Mela', 'HR', 'IST');
INSERT INTO state_info VALUES(15, 'Odisha', 'Bhubaneswar', 46356334, 155707, 72.87, 'Odia', '1950-01-26', 'Ganeshi Lal', 'Naveen Patnaik', 3, 110.25, 'Konark Sun Temple', 'OD', 'IST');
INSERT INTO state_info VALUES(16, 'Chhattisgarh', 'Raipur', 29436231, 135192, 71.04, 'Hindi', '2000-11-01', 'Anusuiya Uikey', 'Bhupesh Baghel', 3, 80.33, 'Chitrakoot Falls', 'CT', 'IST');
INSERT INTO state_info VALUES(17, 'Jharkhand', 'Ranchi', 32988134, 79716, 66.41, 'Hindi', '2000-11-15', 'C. P. Radhakrishnan', 'Hemant Soren', 3, 90.23, 'Dassam Falls', 'JH', 'IST');
INSERT INTO state_info VALUES(18, 'Assam', 'Dispur', 31205576, 78438, 72.19, 'Assamese', '1947-08-15', 'Gulab Chand Kataria', 'Himanta Biswa Sarma', 4, 70.45, 'Kaziranga National Park', 'AS', 'IST');
INSERT INTO state_info VALUES(19, 'Himachal Pradesh', 'Shimla', 6864602, 55673, 82.8, 'Hindi', '1971-01-25', 'Shiv Pratap Shukla', 'Sukhvinder Singh Sukhu', 4, 50.15, 'The Ridge', 'HP', 'IST');
INSERT INTO state_info VALUES(20, 'Tripura', 'Agartala', 3673917, 10486, 87.75, 'Bengali', '1972-01-21', 'Satyadev Narayan Arya', 'Manik Saha', 3, 45.75, 'Neermahal', 'TR', 'IST');


UPDATE state_info SET population = 68000000, gdp = 260.00;
UPDATE state_info SET population = 125000000, gdp = 410.50 WHERE state_id = 2;
UPDATE state_info SET population = 78000000, education_rate = 81.00 WHERE state_id = 3;
UPDATE state_info SET area = 243286, governor = 'Anandiben Patel' WHERE state_id = 4;
UPDATE state_info SET famous_landmark = 'Somnath Temple', tourism_rating = 5 WHERE state_id = 5;
UPDATE state_info SET population = 81500000, gdp = 185.00 WHERE state_id = 6;
UPDATE state_info SET population = 100000000, education_rate = 78.00 WHERE state_id = 7;
UPDATE state_info SET governor = 'Mangubhai C. Patel', cm_name = 'Shivraj Singh Chouhan' WHERE state_id = 8;
UPDATE state_info SET area = 94563, iso_code = 'BR' WHERE state_id = 9;
UPDATE state_info SET capital = 'Vishakhapatnam', education_rate = 68.00 WHERE state_id = 10;



DELETE FROM state_info WHERE state_full_name='UttarPradesh';
DELETE FROM state_info WHERE capital='Gandhinagar' and area=196024;
DELETE FROM state_info WHERE education_rate= 66.11;


SELECT * FROM state_info WHERE population > 50000000 AND gdp > 200.00;
SELECT  governor,cm_name from state_info where gdp=260 or gdp=280;
SELECT  capital FROM state_info WHERE state_full_name IN ('Karnataka', 'Maharashtra', 'Tamil Nadu');
SELECT area,main_language FROM state_info WHERE state_id NOT IN(2,3,4,7,8);


