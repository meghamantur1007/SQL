CREATE DATABASE scam;

CREATE TABLE scam_info(scam_id INT,scam_name VARCHAR(100),year INT,amount_involved DECIMAL(15, 2),involved_persons TEXT,country VARCHAR(50),sector VARCHAR(50),status VARCHAR(50),investigation_agency VARCHAR(50),remarks TEXT);
ALTER TABLE scam_info ADD COLUMN court_case_no VARCHAR(50),ADD COLUMN media_coverage VARCHAR(50),ADD COLUMN whistleblower VARCHAR(50),ADD COLUMN impact_on_economy TEXT,ADD COLUMN fines_imposed DECIMAL(15, 2);

SELECT * FROM scam_info;
ALTER TABLE scam_info RENAME COLUMN scam_name TO fraud_name,RENAME COLUMN amount_involved TO total_amount,RENAME COLUMN involved_persons TO persons_involved,RENAME COLUMN investigation_agency TO agency_investigating, RENAME COLUMN media_coverage TO press_coverage;

ALTER TABLE scam_info MODIFY year VARCHAR(4), MODIFY sector TEXT,MODIFY fines_imposed FLOAT,MODIFY court_case_no TEXT,MODIFY impact_on_economy VARCHAR(60);

INSERT INTO scam_info VALUES(1, 'Satyam Scam', '2009', 7000.00, 'Ramalinga Raju', 'India', 'Corporate', 'Convicted', 'CBI', 'Inflated company revenue', '123/2009', 'High', 'Unknown', 'Significant loss in IT sector', 200.00);
INSERT INTO scam_info VALUES(2, '2G Spectrum Scam', '2008', 176000.00, 'A. Raja', 'India', 'Telecom', 'Convicted', 'CBI', 'Underpriced spectrum allocations', '456/2008', 'High', 'Unknown', 'Major impact on telecom sector', 0.00);
INSERT INTO scam_info VALUES(3, 'Vijay Mallya Loan Default', '2016', 9000.00, 'Vijay Mallya', 'India', 'Banking', 'Fugitive', 'ED', 'Defaulted on loans', '789/2016', 'High', 'Unknown', 'Loss to multiple banks', 400.00);
INSERT INTO scam_info VALUES(4, 'Punjab National Bank Fraud', '2018', 11356.00, 'Nirav Modi', 'India', 'Banking', 'Under Investigation', 'CBI', 'Fraudulent LoUs', '321/2018', 'High', 'Unknown', 'Significant loss to PNB', 550.00);
INSERT INTO scam_info VALUES(5, 'Commonwealth Games Scam', '2010', 70000.00, 'Suresh Kalmadi', 'India', 'Sports', 'Convicted', 'CBI', 'Corruption in games organization', '654/2010', 'High', 'Unknown', 'Damage to national reputation', 300.00);
INSERT INTO scam_info VALUES(6, 'Coal Allocation Scam', '2012', 185591.00, 'Manmohan Singh', 'India', 'Mining', 'Under Investigation', 'CBI', 'Underpriced coal blocks', '987/2012', 'High', 'Unknown', 'Loss to exchequer', 0.00);
INSERT INTO scam_info VALUES(7, 'Chopper Scam', '2013', 3600.00, 'A. K. Antony', 'India', 'Defense', 'Under Investigation', 'CBI', 'Bribes for helicopter deal', '123/2013', 'High', 'Unknown', 'Corruption in defense procurement', 0.00);
INSERT INTO scam_info VALUES(8, 'Telgi Stamp Paper Scam', '2002', 20000.00, 'Abdul Karim Telgi', 'India', 'Counterfeiting', 'Convicted', 'CBI', 'Fake stamp papers', '456/2002', 'High', 'Unknown', 'Widespread counterfeiting', 250.00);
INSERT INTO scam_info VALUES(9, 'Adarsh Housing Scam', '2010', 1000.00, 'Ashok Chavan', 'India', 'Real Estate', 'Convicted', 'CBI', 'Illegal apartment allocations', '789/2010', 'High', 'Unknown', 'Corruption in housing scheme', 200.00);
INSERT INTO scam_info VALUES(10, 'Fodder Scam', '1996', 950.00, 'Lalu Prasad Yadav', 'India', 'Agriculture', 'Convicted', 'CBI', 'Embezzlement of animal husbandry funds', '321/1996', 'High', 'Unknown', 'Loss to Bihar government', 400.00);
INSERT INTO scam_info VALUES(11, 'Saradha Chit Fund Scam', '2013', 2000.00, 'Sudipta Sen', 'India', 'Finance', 'Under Investigation', 'CBI', 'Ponzi scheme', '654/2013', 'High', 'Unknown', 'Loss to investors', 550.00);
INSERT INTO scam_info VALUES(12, 'NSEL Scam', '2013', 5600.00, 'Jignesh Shah', 'India', 'Finance', 'Under Investigation', 'ED', 'Fraudulent trading activities', '987/2013', 'High', 'Unknown', 'Loss to traders', 800.00);
INSERT INTO scam_info VALUES(13, 'Aircel-Maxis Scam', '2011', 3500.00, 'Dayanidhi Maran', 'India', 'Telecom', 'Under Investigation', 'CBI', 'Illegal foreign investment', '123/2011', 'High', 'Unknown', 'Loss to government', 650.00);
INSERT INTO scam_info VALUES(14, 'Bank of Baroda Scam', '2015', 6000.00, 'Unknown', 'India', 'Banking', 'Under Investigation', 'CBI', 'Illegal remittances', '456/2015', 'High', 'Unknown', 'Loss to Bank of Baroda', 0.00);
INSERT INTO scam_info VALUES(15, 'AgustaWestland Scam', '2014', 3600.00, 'Christian Michel', 'India', 'Defense', 'Under Investigation', 'CBI', 'Bribes for helicopter deal', '789/2014', 'High', 'Unknown', 'Corruption in defense procurement', 0.00);
INSERT INTO scam_info VALUES(16, 'Sahara SEBI Scam', '2010', 24000.00, 'Subrata Roy', 'India', 'Finance', 'Convicted', 'SEBI', 'Illegal deposit schemes', '321/2010', 'High', 'Unknown', 'Loss to investors', 0.00);
INSERT INTO scam_info VALUES(17, 'Harshad Mehta Scam', '1992', 5000.00, 'Harshad Mehta', 'India', 'Stock Market', 'Convicted', 'CBI', 'Stock market manipulation', '654/1992', 'High', 'Unknown', 'Loss to stock market', 500.00);
INSERT INTO scam_info VALUES(18, 'Ketan Parekh Scam', '2001', 1370.00, 'Ketan Parekh', 'India', 'Stock Market', 'Convicted', 'CBI', 'Stock market manipulation', '987/2001', 'High', 'Unknown', 'Loss to stock market', 350.00);
INSERT INTO scam_info VALUES(19, 'Bank Scam', '2019', 7100.00, 'Unknown', 'India', 'Banking', 'Under Investigation', 'ED', 'Fraudulent loan sanctions', '123/2019', 'High', 'Unknown', 'Loss to banks', 950.00);
INSERT INTO scam_info VALUES(20, 'IL&FS Crisis', '2018', 91000.00, 'Unknown', 'India', 'Infrastructure', 'Under Investigation', 'ED', 'Financial mismanagement', '456/2018', 'High', 'Unknown', 'Impact on financial markets', 900.00);

UPDATE scam_info SET status = 'Under Investigation', press_coverage = 'Moderate' WHERE scam_id = 1;
UPDATE scam_info SET status = 'Closed', press_coverage = 'High' WHERE scam_id = 2;
UPDATE scam_info SET fines_imposed = 1000.00, press_coverage = 'High' WHERE scam_id = 3;
UPDATE scam_info SET agency_investigating = 'ED', press_coverage = 'Moderate' WHERE scam_id = 4;
UPDATE scam_info SET status = 'Under Investigation', press_coverage = 'High' WHERE scam_id = 5;
UPDATE scam_info SET court_case_no = '654/2012', status = 'Closed' WHERE scam_id = 6;
UPDATE scam_info SET persons_involved = 'Unknown', status = 'Under Investigation' WHERE scam_id = 7;
UPDATE scam_info SET total_amount = 25000.00, status = 'Convicted' WHERE scam_id = 8;
UPDATE scam_info SET agency_investigating = 'ED', fines_imposed = 500.00 WHERE scam_id = 9;
UPDATE scam_info SET remarks = 'Pending trial', status = 'Under Investigation' WHERE scam_id = 10;

DELETE FROM scam_info WHERE scam_id=5 and year=2010;
DELETE FROM scam_info WHERE total_amount=176000.00 or scam_id=7;
DELETE FROM scam_info WHERE scam_id=8 and total_amount=25000.00;

SELECT * FROM scam_info WHERE  status='Fugitive';
SELECT * FROM scam_info WHERE sector='Real Estate' or scam_id=10;
SELECT  fraud_name from scam_info where year=2001 and year=2001;
SELECT * FROM scam_info where scam_id in(4,6,9,10,18);
SELECT * FROM scam_info where scam_id not in(4,6,9,10,18);
