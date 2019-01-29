select * from t_resource_temporary where isli_code='000002-100000000002425-8';
;-- -. . -..- - / . -. - .-. -.--
select * from t_resource_temporary where isli_code='000002-100000000002482-8';
;-- -. . -..- - / . -. - .-. -.--
select * from t_resource_temporary where isli_code='000002-100000000002486-4';
;-- -. . -..- - / . -. - .-. -.--
select * from t_resource_temporary where status = 2 order by update_time desc limit 0, 100;
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_ucaac_app_management;
;-- -. . -..- - / . -. - .-. -.--
select
  ts.*
from t_service ts
  left join t_service_user tsu on ts.id = tsu.service_id
where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
select
  ts.*, tsu.*
from t_service ts
  left join t_service_user tsu on ts.id = tsu.service_id
where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
select trm.status as status, trm.update_time, trm.audit_desc as auditDesc, trf.*, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm join t_resource_file trf on trm.isli_code = trf.isli_code left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where 1 = 1 AND trm.status = -2 AND trm.status in ( 0 , 1 , 2 , 3 , 5 , -2 ) ORDER BY trf.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select trm.status as status, trm.update_time, trm.audit_desc as auditDesc, trf.*, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm join t_resource_file trf on trm.isli_code = trf.isli_code left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where 1 = 1 AND trm.status = -2;
;-- -. . -..- - / . -. - .-. -.--
select trm.status as status, trm.update_time, trm.audit_desc as auditDesc, trf.*, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm left join t_resource_file trf on trm.isli_code = trf.isli_code left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where 1 = 1 AND trm.status = -2 AND trm.status in ( 0 , 1 , 2 , 3 , 5 , -2 ) ORDER BY trf.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select 
  trm.status as status, 
  trm.update_time, 
  trm.audit_desc as auditDesc, 
  trf.*, 
  case when trmd.status is null then -1 else trmd.status end as delStatus, 
  trmd.audit_desc as delAuditDesc 
from t_resource_temporary trm 
  left join t_resource_file trf on trm.isli_code = trf.isli_code 
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code 
where 1 = 1 AND trm.status = -2 AND trm.status in ( 0 , 1 , 2 , 3 , 5 , -2 ) ORDER BY trf.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select
  trm.status as status,
  trm.update_time,
  trm.audit_desc as auditDesc,
  trm.*,
  trf.*,
  case when trmd.status is null then -1 else trmd.status end as delStatus,
  trmd.audit_desc as delAuditDesc
from t_resource_temporary trm
  left join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code
where 1 = 1 AND trm.status = -2 AND trm.status in ( 0 , 1 , 2 , 3 , 5 , -2 ) ORDER BY trf.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select
  trm.status as status,
  trm.update_time,
  trm.audit_desc as auditDesc,
  trm.isli_code,
  trf.*,
  case when trmd.status is null then -1 else trmd.status end as delStatus,
  trmd.audit_desc as delAuditDesc
from t_resource_temporary trm
  left join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code
where 1 = 1 AND trm.status = -2 AND trm.status in ( 0 , 1 , 2 , 3 , 5 , -2 ) ORDER BY trf.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a';
;-- -. . -..- - / . -. - .-. -.--
SELECT FIND_IN_SET('C', (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a')) AS result;
;-- -. . -..- - / . -. - .-. -.--
SELECT FIND_IN_SET('4', (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a')) AS result;
;-- -. . -..- - / . -. - .-. -.--
SELECT FIND_IN_SET(',', (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a')) AS result;
;-- -. . -..- - / . -. - .-. -.--
SELECT FIND_IN_SET(select file_type from t_resource_file trf where trf.isli_code='000002-100000000002763-8', (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a')) AS result;
;-- -. . -..- - / . -. - .-. -.--
SELECT FIND_IN_SET((select file_type from t_resource_file trf where trf.isli_code='000002-100000000002763-8'), (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a')) AS result;
;-- -. . -..- - / . -. - .-. -.--
SELECT FIND_IN_SET((select file_type from t_resource_file trf where trf.isli_code='010002-000000000000001001359999-1'), (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='e229dbcd3e3e4ba8aa59361da9960b0a')) AS result;
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_ucaac_third_platform_management;
;-- -. . -..- - / . -. - .-. -.--
truncate t_platform_rel_service;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_platform ADD CONSTRAINT t_platform_unique UNIQUE (platform_id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_platform_user_info ADD CONSTRAINT t_platform_user_info_unique UNIQUE (platform_id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_platform_rel_service ADD CONSTRAINT t_platform_rel_service_unique UNIQUE (platform_id, service_scope);
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_temporary_resources;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_resource_temporary ADD download_start_time timestamp DEFAULT NULL NULL COMMENT '最后一个下载任务的开始时间';
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_resource_temporary ADD download_done_time timestamp DEFAULT NULL NULL COMMENT '最后一个下载任务的完成时间';
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_resource_temporary ADD download_mesg varchar(200) DEFAULT NULL NULL COMMENT '最后一个下载任务的完成信息';
;-- -. . -..- - / . -. - .-. -.--
select * from t_resource_file trf, t_resource_file_bak trfb where trf.isli_code=trfb.isli_code and trfb.update_time > trf.update_time;
;-- -. . -..- - / . -. - .-. -.--
select trf.isli_code, trf.update_time, trfb.update_time from t_resource_file trf, t_resource_file_bak trfb where trf.isli_code=trfb.isli_code and trfb.update_time > trf.update_time and trf.isli_code='010000-000000000000000800000189-2';
;-- -. . -..- - / . -. - .-. -.--
select trf.isli_code, trf.update_time, trfb.update_time from t_resource_file trf, t_resource_file_bak trfb where trf.isli_code=trfb.isli_code and trfb.update_time > trf.update_time;
;-- -. . -..- - / . -. - .-. -.--
select
  trm.isli_code,
  (trfb.update_time is null or trf.update_time > trfb.update_time) as latest,
  trf.update_time,
  trfb.update_time
from t_resource_temporary trm
  left join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_file_bak trfb on trm.isli_code = trfb.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code
where 1 = 1 and trf.isli_code='010000-000000000000000800000189-2';
;-- -. . -..- - / . -. - .-. -.--
select
  trm.isli_code,
  (trfb.update_time is null or trf.update_time > trfb.update_time) as latest,
  trf.update_time,
  trfb.update_time
from t_resource_temporary trm
  left join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_file_bak trfb on trm.isli_code = trfb.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code
where 1 = 1;
;-- -. . -..- - / . -. - .-. -.--
select
  trm.isli_code,
  (trfb.update_time is null or trf.update_time > trfb.update_time) as latest,
  trf.update_time,
  trfb.update_time
from t_resource_temporary trm
  left join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_file_bak trfb on trm.isli_code = trfb.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code
where 1 = 1 and 
      (trf.isli_code='010000-000000000000000800000189-2'
        or trf.isli_code='000002-100000000002893-1'
        or trf.isli_code='010000-000000000000000800000124-9'
      );