CREATE TABLE distinct_demo (
  id SERIAL NOT NULL PRIMARY KEY, 
  bcolor VARCHAR, 
  fcolor VARCHAR
);

INSERT INTO distinct_demo (bcolor, fcolor) 
VALUES 
  ('red', 'red'), 
  ('red', 'red'), 
  ('red', NULL), 
  (NULL, 'red'), 
  ('red', 'green'), 
  ('red', 'blue'), 
  ('green', 'red'), 
  ('green', 'blue'), 
  ('green', 'green'), 
  ('blue', 'red'), 
  ('blue', 'green'), 
  ('blue', 'blue');
  
SELECT id, 
	bcolor, 
	fcolor 
FROM distinct_demo;


SELECT bcolor 
FROM distinct_demo 
ORDER BY bcolor;


SELECT DISTINCT bcolor 
FROM distinct_demo 
ORDER BY bcolor;
