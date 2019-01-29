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
;-- -. . -..- - / . -. - .-. -.--
use cncbox_rcsm;
;-- -. . -..- - / . -. - .-. -.--
select rcs_system_id as rcsId, rcs_owner_name as rcsName from t_rcs_info;
;-- -. . -..- - / . -. - .-. -.--
select ts.* , case when tsau.status is null then 1 else tsau.status end as articleStatus from t_service ts left join t_service_article_user tsau on ts.id = tsau.service_id where 1 = 1 AND ts.id not in (select tsu.service_id from t_service_user tsu where tsu.`user_id` = 87) AND tsau.user_id = 87 ORDER BY ts.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select ts.* , case when tsau.status is null then 1 else tsau.status end as articleStatus from t_service ts left join t_service_article_user tsau on ts.id = tsau.service_id where 1 = 1 AND ts.id not in (select tsu.service_id from t_service_user tsu where tsu.`user_id` = 87);
;-- -. . -..- - / . -. - .-. -.--
select ts.* , case when tsau.status is null then 1 else tsau.status end as articleStatus from t_service ts left join t_service_article_user tsau on ts.id = tsau.service_id AND tsau.user_id = 87 where 1 = 1 AND ts.id not in (select tsu.service_id from t_service_user tsu where tsu.`user_id` = 87)  ORDER BY ts.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select ts.* , case when tsau.status is null then 1 else tsau.status end as articleStatus from t_service ts left join t_service_article_user tsau on ts.id = tsau.service_id AND tsau.user_id = 87 where 1 = 1 AND ts.id not in (select tsu.service_id from t_service_user tsu where tsu.`user_id` = 111)  ORDER BY ts.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select 
  ts.* , 
  case when tsau.status is null then 1 else tsau.status end as articleStatus 
from t_service ts 
  left join t_service_article_user tsau on ts.id = tsau.service_id AND tsau.user_id = 111 
where 1 = 1 AND ts.id not in (select tsu.service_id from t_service_user tsu where tsu.`user_id` = 87)  ORDER BY ts.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select sum(tgm.mpr_file_size) from mpr_pgs.t_goods tg left join mpr_pgs.t_goods_mpr tgm on tg.goods_type_id = tgm.id where tg.status=1 and tgm.mpr_file_size is not null;
;-- -. . -..- - / . -. - .-. -.--
select tgm.mpr_file_size from mpr_pgs.t_goods tg left join mpr_pgs.t_goods_mpr tgm on tg.goods_type_id = tgm.id where tg.status=1 and tgm.mpr_file_size is not null;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from mpr_pgs.t_goods where status=1 group shop_id;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from mpr_pgs.t_goods where status=1 group by shop_id;
;-- -. . -..- - / . -. - .-. -.--
select shop_id from mpr_pgs.t_goods where status=1 group by shop_id;
;-- -. . -..- - / . -. - .-. -.--
select count (1) from (select shop_id from mpr_pgs.t_goods where status=1 group by shop_id);
;-- -. . -..- - / . -. - .-. -.--
select count (1) from (select shop_id from mpr_pgs.t_goods where status=1 group by shop_id) temp;
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_ucaac_normal_user_account_management;
;-- -. . -..- - / . -. - .-. -.--
SELECT a.need_two_factor_login
FROM t_account a
WHERE a.account_id = 15396743960868555 OR a.username = 15396743960868555 OR a.email = 15396743960868555 OR a.cell_phone = 15396743960868555;
;-- -. . -..- - / . -. - .-. -.--
SELECT IFNULL(FIND_IN_SET((select file_type from t_resource_file trf where trf.isli_code='010000-000000000000000800000082-9'), (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='3232')), 0) AS result;
;-- -. . -..- - / . -. - .-. -.--
select repeat(" select 1 union all", 36);
;-- -. . -..- - / . -. - .-. -.--
select repeat(" select 1 union all", 366);
;-- -. . -..- - / . -. - .-. -.--
select length(repeat(" select 1 union all", 366));
;-- -. . -..- - / . -. - .-. -.--
select length(repeat(" select 1 union all", 36));
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_ucaac_key_management;
;-- -. . -..- - / . -. - .-. -.--
select encrypt_symmetric_key from t_content_key
where content_identifier= '010000-000000000000009000000447-2' order by create_date desc limit 1;
;-- -. . -..- - / . -. - .-. -.--
select encrypt_symmetric_key from t_content_key
where content_identifier= '010000-000000000000009000000447-2' order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select a.update_time, b.update_time, (IFNULL(a.update_time, NOW()) > b.update_time, NULL) as isLaster from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010000-000000000000009000000447-2';
;-- -. . -..- - / . -. - .-. -.--
select a.update_time, b.update_time from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010000-000000000000009000000447-2' and a.update_time > b.update_time;
;-- -. . -..- - / . -. - .-. -.--
select a.update_time, b.update_time from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010001-000000000000009000030202-3' and a.update_time > b.update_time;
;-- -. . -..- - / . -. - .-. -.--
select a.update_time, b.update_time from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010001-000000000000009000030202-3';
;-- -. . -..- - / . -. - .-. -.--
select a.update_time, b.update_time from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010001-000000000000009000030202-3' and (b.update_time is null or a.update_time > b.update_time);
;-- -. . -..- - / . -. - .-. -.--
select count(1) from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010001-000000000000009000030202-3' and (b.update_time is null or a.update_time > b.update_time);
;-- -. . -..- - / . -. - .-. -.--
select (b.update_time is null or a.update_time > b.update_time) as laster from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010001-000000000000009000030202-3';
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_ucaac_third_platform_management;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_platform ADD CONSTRAINT t_platform_unique UNIQUE (platform_id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_platform_user_info ADD CONSTRAINT t_platform_user_info_unique UNIQUE (platform_id);
;-- -. . -..- - / . -. - .-. -.--
CREATE UNIQUE INDEX t_platform_rel_service_unique ON t_platform_rel_service (platform_id, service_scope);
;-- -. . -..- - / . -. - .-. -.--
truncate t_platform_rel_service;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_platform_rel_service ADD CONSTRAINT t_platform_rel_service_unique UNIQUE (platform_id, service_scope);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_resource_temporary ADD download_start_time timestamp DEFAULT NULL NULL COMMENT '最后一个下载任务的开始时间';
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_resource_temporary ADD download_done_time timestamp DEFAULT NULL NULL COMMENT '最后一个下载任务的完成时间';
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_resource_temporary ADD download_mesg varchar(200) DEFAULT NULL NULL COMMENT '最后一个下载任务的完成信息';
;-- -. . -..- - / . -. - .-. -.--
use com_cncbox_temporary_resources;
;-- -. . -..- - / . -. - .-. -.--
update t_resource_temporary set status=2 where  status=1;