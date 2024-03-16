/*進站人數最多的一筆*/

SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號

/*求出進站人數最大的*/
SELECT MAX(進站人數)
FROM gate_count

/*求出最大進站人數*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = 82586


/*SsubQuery應用,如where那段程式()內的*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = (
	SELECT MAX(進站人數)
	FROM gate_count
);


