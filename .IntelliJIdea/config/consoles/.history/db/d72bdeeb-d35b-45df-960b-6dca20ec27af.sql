select * from t_processing_file where goods_id = '119943';
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_consumer MODIFY birthday datetime DEFAULT '0000-00-00 00:00:00' COMMENT '出生日期';
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods
where id = 120069;
;-- -. . -..- - / . -. - .-. -.--
select * from t_publication_book
where id = 119765;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pcs.t_consumer where login_name like '13631693333';
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pcs.t_consumer where login_name not like '%@%';
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 login_name not like '%@%' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 where login_name not like '%@%' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pcs.t_consumer where login_name not like '%@%' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
use mpr_pcs;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 where login_name not like 'chenl@mpreader.com' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0;
;-- -. . -..- - / . -. - .-. -.--
use mpr_pgcs;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pgcs.platform_goods_class set platform_id = 1;
;-- -. . -..- - / . -. - .-. -.--
commit;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  t1.*
FROM
  t_media_publication_info t1
WHERE
  t1.goods_id = 120833
  AND (
    (
      UPPER(media_type) = 'MPRX'
    )
    OR
    (
      UPPER(media_type) = 'MPR'
      AND UPPER(media_format) = UPPER('ogg')
                                             )
    )
    ORDER BY create_time DESC
    LIMIT 1;
;-- -. . -..- - / . -. - .-. -.--
select resource_uuids,id,key_id from t_ref_media_publication_info
where id = 77917;
;-- -. . -..- - / . -. - .-. -.--
select * from t_upload_file where upload_id = '23d82a9d604a40f79aad9fa78021bee9';
;-- -. . -..- - / . -. - .-. -.--
USE mpr_cpps;
;-- -. . -..- - / . -. - .-. -.--
select * from t_processing_file where goods_id = '120833';
;-- -. . -..- - / . -. - .-. -.--
select * from t_processing_file where id = 5579;
;-- -. . -..- - / . -. - .-. -.--
select * from t_processing_file where goods_id = '120859';
;-- -. . -..- - / . -. - .-. -.--
select resource_uuids,id,key_id from t_ref_media_publication_info
where id = 77937;
;-- -. . -..- - / . -. - .-. -.--
select resource_uuids,id,key_id from t_ref_media_publication_info
where id = 77939;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  t1.*
FROM
  t_media_publication_info t1
WHERE
  t1.goods_id = 120873;
;-- -. . -..- - / . -. - .-. -.--
select a.resource_uuids,a.id,a.key_id from t_ref_media_publication_info a, t_media_publication_info b
where a.id = b.id and b.goods_id = 120873 and UPPER(b.media_type) = 'MPR' and UPPER(b.media_format) = 'MP3';
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 3 and a.status != 2;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 3 and a.status != 2;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 4 and a.status != 2;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 17735 and a.status != 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  t1.*
FROM
  t_media_publication_info t1
WHERE
  t1.goods_id = 121429
  AND (
    (
      UPPER(media_type) = 'MPRX'
    )
    OR
    (
      UPPER(media_type) = 'MPR'
      AND UPPER(media_format) = UPPER('ogg')
                                             )
    )
    ORDER BY create_time DESC
    LIMIT 1;
;-- -. . -..- - / . -. - .-. -.--
select resource_uuids,id,key_id from t_ref_media_publication_info
where id = 78383;
;-- -. . -..- - / . -. - .-. -.--
use mpr_cpps;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 6 AND tgbi.goods_name LIKE CONCAT('%', '社会主义接班人', '%');
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 7 AND tgbi.goods_name LIKE CONCAT('%', '社会主义接班人', '%');
;-- -. . -..- - / . -. - .-. -.--
usr mpr_pgs;
SELECT tg.id FROM t_goods tg, (
  SELECT DISTINCT tmp.id FROM (SELECT tgm.id, CONCAT(IFNULL(tgm.service_code, '000000'),'-',tgm.mpr_prefix_code,"00102") AS identifier FROM t_goods_mpr tgm WHERE (tgm.service_code='000000' OR tgm.service_code IS NULL) AND tgm.mpr_prefix_code="1000001792" ) tmp JOIN t_source ts ON tmp.identifier = ts.source_identifier
) AS a WHERE tg.goods_type = 'mpr' AND tg.status = 1 AND tg.goods_type_id = a.id;
;-- -. . -..- - / . -. - .-. -.--
usr mpr_pgs;
SELECT tg.id FROM t_goods tg, (
  SELECT DISTINCT tmp.id FROM (
                                SELECT tgm.id, 
                                  CONCAT(IFNULL(tgm.service_code, '000000'),'-',tgm.mpr_prefix_code,"00102") AS identifier 
                                FROM t_goods_mpr tgm 
                                WHERE (tgm.service_code='000000' OR tgm.service_code IS NULL) AND tgm.mpr_prefix_code="1000001792" ) tmp 
    JOIN t_source ts ON tmp.identifier = ts.source_identifier)
) AS a WHERE tg.goods_type = 'mpr' AND tg.status = 1 AND tg.goods_type_id = a.id;
;-- -. . -..- - / . -. - .-. -.--
usr mpr_pgs;
SELECT tg.id FROM t_goods tg, (
  SELECT DISTINCT tmp.id FROM (
                                SELECT tgm.id,
                                  CONCAT(IFNULL(tgm.service_code, '000000'),'-',tgm.mpr_prefix_code,"00102") AS identifier
                                FROM t_goods_mpr tgm
                                WHERE (tgm.service_code='000000' OR tgm.service_code IS NULL) AND tgm.mpr_prefix_code="1000001792" ) tmp
    JOIN t_source ts ON tmp.identifier = ts.source_identifier
) AS a WHERE tg.goods_type = 'mpr' AND tg.status = 1 AND tg.goods_type_id = a.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT tg.id FROM t_goods tg, (
  SELECT DISTINCT tmp.id FROM (
                                SELECT tgm.id,
                                  CONCAT(IFNULL(tgm.service_code, '000000'),'-',tgm.mpr_prefix_code,"00102") AS identifier
                                FROM t_goods_mpr tgm
                                WHERE (tgm.service_code='000000' OR tgm.service_code IS NULL) AND tgm.mpr_prefix_code="1000001792" ) tmp
    JOIN t_source ts ON tmp.identifier = ts.source_identifier
) AS a WHERE tg.goods_type = 'mpr' AND tg.status = 1 AND tg.goods_type_id = a.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT tg.id FROM t_goods tg, (
  SELECT DISTINCT tgm.id FROM t_goods_mpr tgm WHERE (tgm.service_code='000000' OR tgm.service_code IS NULL) AND tgm.mpr_prefix_code="1000001792" 
) AS a WHERE tg.goods_type = 'mpr' AND tg.status = 1 AND tg.goods_type_id = a.id;
;-- -. . -..- - / . -. - .-. -.--
select * from t_source where source_identifier like '%1000001792%';
;-- -. . -..- - / . -. - .-. -.--
SELECT tg.id FROM t_goods tg, (
  SELECT DISTINCT tgm.id FROM t_goods_mpr tgm WHERE (tgm.service_code='000000' OR tgm.service_code IS NULL) AND tgm.mpr_prefix_code="1000001792"
) AS a WHERE tg.goods_type = 'mpr' AND tg.status = 1 AND tg.goods_type_id = a.id;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 7;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods where id=121741;
;-- -. . -..- - / . -. - .-. -.--
select * from t_media_publication_info where goods_id=111213;
;-- -. . -..- - / . -. - .-. -.--
USE mpr_pgs;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 6 AND tgbi.goods_name LIKE CONCAT('%', '期刊申请', '%');
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods where id=121829;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods a, t_goods_base_info b where a.goods_base_id=b.id and id=121829;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods_mpr where id=29259;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods a, t_goods_base_info b where a.goods_base_id=b.id and a.id=121829;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods_mpr where mpr_prefix_code='1000001858';
;-- -. . -..- - / . -. - .-. -.--
select * from t_media_publication_info where goods_id=121841;
;-- -. . -..- - / . -. - .-. -.--
select * from t_source where source_identifier like '%1000001858%';
;-- -. . -..- - / . -. - .-. -.--
use mpr_rds;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 122307 and a.status != 2;
;-- -. . -..- - / . -. - .-. -.--
use mpr_pgs;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods a, t_goods_base_info b where a.goods_base_id=b.id and a.id=122307;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods_mpr where id=29589;