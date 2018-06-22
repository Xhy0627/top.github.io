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
use mpr_rds;
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
use mpr_pgs;
;-- -. . -..- - / . -. - .-. -.--
select count(1) from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 17735 and a.status != 2;