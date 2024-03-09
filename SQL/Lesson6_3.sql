/* 取出payment的所有客戶的customer_id*/
SELECT customer_id,COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id;

/* 取出payment的所有客戶應收帳款總和, SUM()*/
SELECT customer_id,SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
ORDER BY 總和 DESC;

