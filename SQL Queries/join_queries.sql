DROP TABLE join_nwea_testing;

ALTER TABLE nwea_testing_application_date RENAME COLUMN "Test Date" to "A_Test Date";
ALTER TABLE nwea_testing_application_date RENAME COLUMN "Test" to "A_Test";
ALTER TABLE nwea_testing_application_date RENAME COLUMN "Days until Passed" to "A_Days until Passed";

CREATE TABLE join_nwea_testing as(
	SELECT
	 nwea_testing_application_date."Join ID",
	 nwea_testing_application_date."Name",
	 nwea_testing_application_date."Application Date",
	 nwea_testing_application_date."A_Test Date",
	 nwea_testing_application_date."A_Test",
	 nwea_testing_application_date."A_Days until Passed",
	 nwea_testing_start_date."Start Date",
	 nwea_testing_start_date."Test Date",
	 nwea_testing_start_date."Test",
	 nwea_testing_start_date."Days until Passed"
	FROM 
	 nwea_testing_application_date, nwea_testing_start_date
	WHERE nwea_testing_application_date."Join ID" = nwea_testing_start_date."Join ID"
	AND nwea_testing_application_date."A_Test" = nwea_testing_start_date."Test"
);
		
Select * FROM join_nwea_testing;