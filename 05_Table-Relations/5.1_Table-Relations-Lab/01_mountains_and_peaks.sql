CREATE TABLE mountains (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE PEAKS (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INTEGER,

	CONSTRAINT fk_peaks_mountains
	FOREIGN KEY(mountain_Id)
	REFERENCES mountains(id)
);