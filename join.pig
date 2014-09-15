-- join.pig

-- ## TODO : set the name of job
SET job.name 'my_job';


-- ## TODO : load billing data, edit <your name>
billing_data = LOAD 'billing/in/sample.txt' USING PigStorage(',') AS (timestamp:long,custid:int,resource_id:chararray,qty:int,cost:int);
DUMP billing_data;

-- ## TODO : copy the resources.txt file into HDFS (use 'hdfs dfs -put')
-- ## WARN : do not place resources.txt file into 'billing/in'
--           directory  (don't mix billing logs & resources.txt)
resource_data = LOAD '<your name>/billing/resources.txt' USING PigStorage('=') AS (resource_id:int, resource_name:chararray);
DUMP resource_data;

-- ## TODO : join by resource_id
-- ## note, some resource_ids don't have any mappings (e.g 7, 8, 9, 10)
joined = JOIN billing_data by ????,  resource_data  by ????;
DESCRIBE joined;
DUMP joined;
-- ## do all records show up?


-- ## TODO : join by resource_id
-- outer_join = JOIN billing_data by ???? LEFT OUTER, resource_data  by ????;
-- DESCRIBE outer_join;
-- DUMP outer_join;
-- ## do all records show up?
-- ## what is the values for 'missing fields'
