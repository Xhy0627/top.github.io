#后台新增冻结，解冻后，登陆时判断了本地账号的状态。之前旧数据存在部分默认为未激活实际是激活了的数据，这里统一处理
update mpr_pcs.t_consumer set status = 0 where login_name not like 'chenl@mpreader.com' and status = 1;

update mpr_pgcs.platform_goods_class set platform_id = 1
commit


SELECT
  t1.*
FROM
  t_media_publication_info t1
WHERE
  t1.goods_id = 120873
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
    LIMIT 1

select resource_uuids,id,key_id from t_ref_media_publication_info
where id = 77939


select a.resource_uuids,a.id,a.key_id from t_ref_media_publication_info a, t_media_publication_info b
where a.id = b.id and b.goods_id = 120873 and UPPER(b.media_type) = 'MPR' and UPPER(b.media_format) = 'MP3'


use mpr_pgs;
select count(1) from t_goods a, t_goods_base_info b where a.goods_base_id = b.id and b.goods_shop_class_id = 17735 and a.status != 2