CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    npi VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
    );

CREATE TABLE appointment (
	appointment_id INT PRIMARY KEY auto_increment,
	doctor_id INT,
    patient_id INT,
    appointment_date DATE ,
	FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
);
