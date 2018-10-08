select trf.*, trm.status as status, trm.id as id from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code ORDER BY create_time;
;-- -. . -..- - / . -. - .-. -.--
insert into t_resource_temporary (isli_code, unification_id, rcs_url, path, key, status, create_time) values ('000002-000000000005356-5', NULL, NULL, NULL, 0, 0, NOW());
;-- -. . -..- - / . -. - .-. -.--
insert into t_resource_temporary (isli_code, unification_id, rcs_url, path, status, create_time) values ('000002-000000000005356-5', NULL, NULL, NULL, 0, NOW());
;-- -. . -..- - / . -. - .-. -.--
insert into t_resource_temporary (isli_code, unification_id, rcs_url, path, key, status, create_time) values ('000002-000000000005356-5', NULL, NULL, NULL, NULL, 0, NOW());
;-- -. . -..- - / . -. - .-. -.--
insert into t_resource_temporary (isli_code, unification_id, rcs_url, path, `key`, status, create_time) values ('000002-000000000005356-5', NULL, NULL, NULL, NULL, 0, NOW());
;-- -. . -..- - / . -. - .-. -.--
update t_resource_file set `metadata_cloud_xml` = null, `update_time` = '2018-08-13 20:06:47' where isli_code = '000002-000000000005359-2';
;-- -. . -..- - / . -. - .-. -.--
select trm.status as status, trf.* from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code AND trm.status = 3 AND trm.status in ( 3 , 5 ) ORDER BY trf.update_time asc LIMIT 0,10;
;-- -. . -..- - / . -. - .-. -.--
select trm.status as status, trf.* from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code AND trm.status = 3 AND trm.status in ( 3 , 5 ) ORDER BY trf.update_time desc LIMIT 0,10;
;-- -. . -..- - / . -. - .-. -.--
select trf.update_time,trm.status as status, trf.* from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code AND trm.status = 3 AND trm.status in ( 3 , 5 ) 
ORDER BY trf.update_time desc LIMIT 0,10;
;-- -. . -..- - / . -. - .-. -.--
select trf.update_time,trm.status as status, trf.* from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code AND trm.status = 3 AND trm.status in ( 3 , 5 )
ORDER BY trf.update_time asc LIMIT 0,10;
;-- -. . -..- - / . -. - .-. -.--
select         
  count(1)         
from t_resource_temporary trm, t_resource_file trf         
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code         
where trm.isli_code = trf.isli_code;
;-- -. . -..- - / . -. - .-. -.--
select
  count(1)
from t_resource_temporary trm
  join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code;
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_temporary_resources;
;-- -. . -..- - / . -. - .-. -.--
select *, case when trmd.status is null then -1 else trmd.status end as delStatus from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where isli_code = 010002-000000000000000000100004-5;
;-- -. . -..- - / . -. - .-. -.--
select *, case when trmd.status is null then -1 else trmd.status end as delStatus from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where trm.isli_code = 010002-000000000000000000100004-5                                                                                                   AND trmd.status is null;
;-- -. . -..- - / . -. - .-. -.--
select *, case when trmd.status is null then -1 else trmd.status end as delStatus from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where trm.isli_code = 010002-000000000000000000100004-5;
;-- -. . -..- - / . -. - .-. -.--
select *, case when trmd.status is null then -1 else trmd.status end as delStatus from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where trm.isli_code = '010002-000000000000000000100004-5';
;-- -. . -..- - / . -. - .-. -.--
select trm.status as status, trm.update_time, trm.audit_desc as auditDesc, trf.*, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm join t_resource_file trf on trm.isli_code = trf.isli_code left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
select *, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where trm.isli_code = '000002-000000000005549-3';