SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號


/*全省各站點2022年進站總人數*/
SELECT DATE_PART('year',日期) AS 年度,名稱,SUM(進站人數) AS 進站總人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 年度,名稱
ORDER BY 進站總人數 DESC



/*全省各站點2022年進站總人數大於5佰萬人的站點*/
SELECT DATE_PART('year',日期) AS 年度,名稱,SUM(進站人數) AS 進站總人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 日期 BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 年度,名稱
HAVING SUM(進站人數) > 5000000
ORDER BY 進站總人數 DESC



/*基隆火車站2020年,每月份進站人數*/
SELECT DATE_TRUNC('month',日期) AS 月份,名稱,SUM(進站人數) AS 進站總人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱 = '基隆' AND 日期 BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY 月份,名稱
ORDER BY 月份,進站總人數



/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT DATE_TRUNC('month',日期) AS 月份,名稱,SUM(進站人數) AS 進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱 = '基隆' AND 日期 BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY 月份,名稱
ORDER BY 進站人數 DESC


/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT DATE_TRUNC('month',日期) AS 月份,名稱,SUM(進站人數) AS 進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱 = '基隆' AND 日期 BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY 月份,名稱
ORDER BY 進站人數 DESC



/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT DATE_PART('year',日期) AS 年度,名稱,SUM(進站人數) AS 進站人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱 = '基隆' AND 日期 BETWEEN '2020-01-01' AND '2022-12-31'
GROUP BY 年度,名稱
ORDER BY 年度,進站人數



/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/
SELECT DATE_PART('year',日期) AS 年度,名稱,SUM(進站人數) AS 進站總人數
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱 IN ('基隆','臺北') AND 日期 BETWEEN '2020-01-01' AND '2022-12-31'
GROUP BY 年度,名稱
ORDER BY 年度,進站總人數 DESC
