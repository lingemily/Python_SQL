SELECT *
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

SELECT 日期,進站人數,出站人數,名稱,地名,地址,youbike
FROM gate_count LEFT JOIN stations ON 站點編號=編號;

/*取出基隆市有哪些火車站*/
SELECT DISTINCT 名稱
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 地址 LIKE '基隆市%';


SELECT DISTINCT 日期,名稱
FROM gate_count LEFT JOIN stations ON 站點編號=編號
WHERE 日期 = '2022-03-01' AND  名稱 ='基隆';
