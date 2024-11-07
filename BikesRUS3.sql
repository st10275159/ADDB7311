--QUESTION 1
-- Create the VOLUNTEER table
CREATE TABLE VOLUNTEER (
    VOL_ID VARCHAR2(10) PRIMARY KEY,
    VOL_FNAME VARCHAR2(50) NOT NULL,
    VOL_SNAME VARCHAR2(50) NOT NULL,
    CONTACT VARCHAR2(15) NOT NULL,
    ADDRESS VARCHAR2(100),
    EMAIL VARCHAR2(100) UNIQUE
);

-- Create the DONOR table
CREATE TABLE DONOR (
    DONOR_ID VARCHAR2(10) PRIMARY KEY,
    DONOR_FNAME VARCHAR2(50) NOT NULL,
    DONOR_SNAME VARCHAR2(50) NOT NULL,
    CONTACT_NO VARCHAR2(15) NOT NULL,
    EMAIL VARCHAR2(100) UNIQUE
);

-- Create the BIKE table
CREATE TABLE BIKE (
    BIKE_ID VARCHAR2(10) PRIMARY KEY,
    DESCRIPTION VARCHAR2(50),
    BIKE_TYPE VARCHAR2(50),
    MANUFACTURER VARCHAR2(50)
);

-- Create the DONATION table with foreign keys referencing DONOR, BIKE, and VOLUNTEER
CREATE TABLE DONATION (
    DONATION_ID NUMBER PRIMARY KEY,
    DONOR_ID VARCHAR2(10) REFERENCES DONOR(DONOR_ID),
    BIKE_ID VARCHAR2(10) REFERENCES BIKE(BIKE_ID),
    VALUE NUMBER(10,2),
    VOLUNTEER_ID VARCHAR2(10) REFERENCES VOLUNTEER(VOL_ID),
    DONATION_DATE DATE
);

--data into VOLUNTEER table
INSERT INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL) VALUES ('vol101', 'Kenny', 'Temba', '0677277521', '10 Sands Road', 'kennyt@bikerus.com');
INSERT INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL) VALUES ('vol102', 'Mamelodi', 'Marks', '0737377522', '20 Langes Street', 'mamelodim@bikerus.com');
INSERT INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL) VALUES ('vol103', 'Ada', 'Andrews', '0817117523', '31 Williams Street', 'adanyaa@bikerus.com');
INSERT INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL) VALUES ('vol104', 'John', 'Smith', '0836523451', '45 Loop Street', 'johns@bikerus.com');
INSERT INTO VOLUNTEER (VOL_ID, VOL_FNAME, VOL_SNAME, CONTACT, ADDRESS, EMAIL) VALUES ('vol105', 'Nancy', 'Jones', '0798762341', '78 Main Road', 'nancyj@bikerus.com');

-- data into DONOR table
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID11', 'Jeff', 'Wanya', '0827172250', 'wanyajeff@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID12', 'Sthembeni', 'Pisho', '0837865670', 'sthepisho@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID13', 'James', 'Temba', '0878978650', 'immy@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID14', 'Luramo', 'Misi', '0826575650', 'uramom@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID15', 'Abraham', 'Xolani', '0797656430', 'axolani@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID16', 'Rumi', 'Jones', '0668899221', 'rjones@true.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID17', 'Xolani', 'Redo', '0614553389', 'xredo@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID18', 'Tenny', 'Stars', '0824228870', 'tenstars@true.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID19', 'Tiny', 'Rambo', '0715554333', 'trambo@ymail.com');
INSERT INTO DONOR (DONOR_ID, DONOR_FNAME, DONOR_SNAME, CONTACT_NO, EMAIL) VALUES ('DID20', 'Yannick', 'Leons', '0615554323', 'yeons@true.com');

-- data into BIKE table
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B001', 'BMX AX1', 'Road Bike', 'BMX');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B002', 'Giant Domain 1', 'Road Bike', 'Giant');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B003', 'Ascent 26In', 'Mountain Bike', 'Raleigh');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B004', 'Canyon 6X', 'Kids Bike', 'Canyon');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B005', 'Marvel', 'Gravel Road Bike', 'BMX');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B006', 'Mountain 21 Speed', 'Mountain Bike', 'BMX');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B007', 'Canyon Roadster', 'Road Bike', 'Canyon');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B008', 'Legion 101', 'Hybrid Bike', 'BMX');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B009', 'Madonna 9', 'Road Bike', 'Trek');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B010', 'Comp 2022', 'Mountain Bike', 'Trek');
INSERT INTO BIKE (BIKE_ID, DESCRIPTION, BIKE_TYPE, MANUFACTURER) VALUES ('B011', 'BMX AX15', 'Road Bike', 'BMX');

--data into DONATION table
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (1, 'DID11', 'B001', 1500, 'vol101', TO_DATE('01-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (2, 'DID12', 'B002', 2500, 'vol101', TO_DATE('03-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (3, 'DID13', 'B003', 1000, 'vol103', TO_DATE('03-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (4, 'DID14', 'B004', 1750, 'vol105', TO_DATE('05-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (5, 'DID15', 'B006', 2000, 'vol101', TO_DATE('07-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (6, 'DID16', 'B007', 1800, 'vol105', TO_DATE('09-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (7, 'DID17', 'B005', 1500, 'vol101', TO_DATE('15-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (8, 'DID18', 'B009', 1500, 'vol103', TO_DATE('19-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (9, 'DID12', 'B010', 2500, 'vol103', TO_DATE('25-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (10, 'DID20', 'B005', 3500, 'vol105', TO_DATE('05-MAY-23', 'DD-MON-YY'));
INSERT INTO DONATION (DONATION_ID, DONOR_ID, BIKE_ID, VALUE, VOLUNTEER_ID, DONATION_DATE) VALUES (11, 'DID19', 'B011', 1200, 'vol101', TO_DATE('11-MAY-23', 'DD-MON-YY'));


-- Question 2
--Select query 
SELECT dt.DONOR_ID, b.BIKE_TYPE, b.DESCRIPTION, dt.VALUE
FROM DONATION dt
JOIN BIKE b ON dt.BIKE_ID = b.BIKE_ID
JOIN DONOR d ON d.DONOR_ID = dt.DONOR_ID
WHERE dt.VALUE > 1500
AND dt.DONOR_ID = 'DID12';

-- Question 3
-- PL/SQL cursor and calculation

SET SERVEROUTPUT ON;

DECLARE 
    CURSOR road_bikes_cur IS 
        SELECT b.DESCRIPTION AS BIKE_DESCRIPTION,
               b.MANUFACTURER AS BIKE_MANUFACTURER,
               b.BIKE_TYPE AS BIKE_TYPE,
               dn.VALUE AS BIKE_VALUE
        FROM DONATION dn
        JOIN BIKE b ON dn.BIKE_ID = b.BIKE_ID 
        WHERE b.BIKE_TYPE = 'Road Bike'; 
        
    bike_rec road_bikes_cur%ROWTYPE;
    
    c_vat_rate CONSTANT NUMBER := 0.15;
    bike_vat NUMBER(10, 2);
    bike_total NUMBER(10, 2);
    
BEGIN
    FOR bike_rec IN road_bikes_cur LOOP
        bike_vat := bike_rec.BIKE_VALUE * c_vat_rate;
        bike_total := bike_rec.BIKE_VALUE + bike_vat;
        
        DBMS_OUTPUT.PUT_LINE('BIKE DESCRIPTION: ' || bike_rec.BIKE_DESCRIPTION);
        DBMS_OUTPUT.PUT_LINE('BIKE MANUFACTURER: ' || bike_rec.BIKE_MANUFACTURER);
        DBMS_OUTPUT.PUT_LINE('BIKE TYPE: ' || bike_rec.BIKE_TYPE);
        DBMS_OUTPUT.PUT_LINE('VALUE: R ' || TO_CHAR(bike_rec.BIKE_VALUE, '999,999.00'));
        DBMS_OUTPUT.PUT_LINE('VAT: R ' || TO_CHAR(bike_vat, '999,999.00'));
        DBMS_OUTPUT.PUT_LINE('TOTAL AMOUNT: R ' || TO_CHAR(bike_total, '999,999.00'));
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------');
    END LOOP;
END;
/

-- Question 4: Create View

CREATE OR REPLACE VIEW wwBikeRUs AS
SELECT d.DONOR_FNAME || ', ' || d.DONOR_SNAME AS DONOR_NAME,
       d.CONTACT_NO,
       b.BIKE_TYPE,
       dt.DONATION_DATE
FROM DONOR d
JOIN DONATION dt ON d.DONOR_ID = dt.DONOR_ID
JOIN BIKE b ON dt.BIKE_ID = b.BIKE_ID
JOIN VOLUNTEER v ON dt.VOLUNTEER_ID = v.VOL_ID
WHERE v.VOL_ID = 'vol105';


SELECT * FROM wwBikeRUs;

-- Benefits of using a View 
-- 1. Views allow BikesRUs to restrict access to specific columns or rows, making sure users only see relevant data.
-- 2. Views provide an easy way to access complex queries by creating a reusable, simplified query structure for users.

  --Q5
  CREATE OR REPLACE PROCEDURE spDonorDetails (p_bike_id IN BIKE.BIKE_ID%TYPE) IS
    -- Declare variables to store the retrieved information
    v_donor_name DONOR.DONOR_FNAME%TYPE;
    v_donor_sname DONOR.DONOR_SNAME%TYPE;
    v_contact DONOR.CONTACT_NO%TYPE;
    v_volunteer_name VOLUNTEER.VOL_FNAME%TYPE;
    v_donation_date DONATION.DONATION_DATE%TYPE;

BEGIN
    -- Fetch donor, volunteer, and donation details based on the provided bike ID
    SELECT DONOR.DONOR_FNAME, DONOR.DONOR_SNAME, DONOR.CONTACT_NO, 
           VOLUNTEER.VOL_FNAME, DONATION.DONATION_DATE
    INTO v_donor_name, v_donor_sname, v_contact, v_volunteer_name, v_donation_date
    FROM DONATION
    JOIN DONOR ON DONATION.DONOR_ID = DONOR.DONOR_ID
    JOIN VOLUNTEER ON DONATION.VOLUNTEER_ID = VOLUNTEER.VOL_ID
    WHERE DONATION.BIKE_ID = p_bike_id;

    -- Display the output
    DBMS_OUTPUT.PUT_LINE('ATTENTION: ' || v_donor_name || ' ' || v_donor_sname || 
                         ' assisted by: ' || v_volunteer_name || ', donated the bike on ' || 
                         TO_CHAR(v_donation_date, 'DD-MON-YY'));

EXCEPTION
    
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No donation found for Bike ID ' || p_bike_id);

    -- Handle any other unexpected errors
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END spDonorDetails;

BEGIN
    
    spDonorDetails('B004');
END;
/
CREATE OR REPLACE FUNCTION fnTotalDonationsByDonor(p_donor_id IN DONOR.DONOR_ID%TYPE)
RETURN NUMBER IS
    -- Declare a variable to store the donation count
    v_total_donations NUMBER;

BEGIN
    --Number of donations made by the specified donor
    SELECT COUNT(*)
    INTO v_total_donations
    FROM DONATION
    WHERE DONOR_ID = p_donor_id;

    -- Return the total count of donations
    RETURN v_total_donations;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No donations found for Donor ID ' || p_donor_id);
        RETURN 0;

    -- Handle any other unexpected errors
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END fnTotalDonationsByDonor;

DECLARE
    -- Variable to store the result from the function
    v_donations_count NUMBER;
BEGIN
    -- Call the function 
    v_donations_count := fnTotalDonationsByDonor('don101');

    -- Display the total number of donations made by the specified donor
    DBMS_OUTPUT.PUT_LINE('Total donations made by Donor ID don101: ' || v_donations_count);
END;
/

--Q8
BEGIN
    -- Cursor 
    FOR bike_record IN (
        SELECT BIKE_ID, BIKE_TYPE, MANUFACTURER, VALUE
        FROM BIKE
    ) LOOP
        -- Output bike details
        DBMS_OUTPUT.PUT_LINE('BIKE ID: ' || bike_record.BIKE_ID);
        DBMS_OUTPUT.PUT_LINE('BIKE TYPE: ' || bike_record.BIKE_TYPE);
        DBMS_OUTPUT.PUT_LINE('BIKE MANUFACTURER: ' || bike_record.MANUFACTURER);
        DBMS_OUTPUT.PUT_LINE('BIKE VALUE: R' || bike_record.VALUE);

        -- Determune star status based on bike value 
        IF bike_record.VALUE > 3000 THEN
            DBMS_OUTPUT.PUT_LINE('STATUS: ***');
        ELSIF bike_record.VALUE > 1500 THEN
            DBMS_OUTPUT.PUT_LINE('STATUS: **');
        ELSE
            DBMS_OUTPUT.PUT_LINE('STATUS: *');
        END IF;

        -- Separate each bike's details with a blank line 
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;
/
SELECT 
    BIKE_ID, 
    BIKE_TYPE,
    MANUFACTURER,
    VALUE,
    CASE 
        WHEN VALUE > 2000 THEN 'High Value'
        WHEN VALUE BETWEEN 1000 AND 2000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS VALUE_STATUS
FROM 
    BIKES;

 --Q9
 CREATE OR REPLACE TRIGGER prevent_delete_donations
BEFORE DELETE ON Donations
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Deletion of donations is not allowed.');
END;
/
CREATE OR REPLACE TRIGGER check_valid_bike_value
BEFORE UPDATE ON Donations
FOR EACH ROW
BEGIN
    IF :NEW.BIKE_VALUE <= 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Bike value must be greater than 0.');
    END IF;
END;
/

    
