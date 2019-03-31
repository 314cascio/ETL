Select * FROM nwea_testing_start_date;
CREATE TABLE join_nwea_testing (
	SELECT
	 nwea_testing_application_date."Join ID",
	 nwea_testing_application_date."Name",
	 nwea_testing_application_date."Application Date",
	 nwea_testing_application_date."Test Date",
	 nwea_testing_application_date."Test",
	 nwea_testing_application_date."Days until Passed",
	 nwea_testing_start_date."Start Date",
	 nwea_testing_start_date."Test Date",
	 nwea_testing_start_date."Test",
	 nwea_testing_start_date."Days until Passed"
	FROM
	 nwea_testing_application_date
	INNER JOIN nwea_testing_start_date ON nwea_testing_start_date."Join ID" = nwea_testing_application_date."Join ID"
);