/*subQuery應用*/

/*進站人數最多的一筆*/

SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號

/*求出進站人數最大的,顯示出最多人數的值*/
SELECT MAX(進站人數)
FROM gate_count

/*求出最大進站人數可顯示進站人數最多一筆的明細*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = 82586


/*subQuery應用,如where那段程式()內的*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 進站人數 = (
	SELECT MAX(進站人數)
	FROM gate_count
);



/*各站點進站人數最多的一筆*/

SELECT 站點編號
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號


/*SELECT  MAX(進站人數)
FROM gate_count
GROUP BY 站點編號;
*/

SELECT 站點編號, MAX(進站人數)
FROM gate_count
GROUP BY 站點編號;

/*進站人數與站點編號均有重複的,則產生的筆數會有242筆*/
SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE (站點編號,進站人數) IN(
	SELECT 站點編號, MAX(進站人數)
	FROM gate_count
	GROUP BY 站點編號
);


/*"採用SELECT 站點編號,進站人數,GROUP BY站點編號,進站人數",針對同"站點編號,進站人數"重複的就不會產生的筆數則會有240筆*/
SELECT 站點編號,進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE (站點編號,進站人數) IN(
	SELECT 站點編號, MAX(進站人數)
	FROM gate_count
	GROUP BY 站點編號
)
GROUP BY 站點編號,進站人數
