-- GROUPBY lab

-- ## TODO : set the name of job
SET job.name 'my_job';

billing_data = LOAD 'billing/in/sample.txt' USING PigStorage(',') AS (timestamp:long,custid:chararray,resourceid:chararray,qty:int,cost:int);
-- DUMP billing_data;

-- ## TODO : group by resourceid
-- grouped_by_resource = GROUP billing_data BY ???  ;
-- DESCRIBE grouped_by_resource;
-- DUMP   grouped_by_resource;

-- ## TODO : special groupby- ALL
-- grpd = GROUP billing_data ___;
-- DESCRIBE grpd;
-- DUMP grpd;
