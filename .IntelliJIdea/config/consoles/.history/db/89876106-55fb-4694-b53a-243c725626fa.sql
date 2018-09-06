select * from t_image where image_owner='platformAD';
;-- -. . -..- - / . -. - .-. -.--
select id,image_url,thumbnail_url,href_url,image_sort,image_path,thumbnail_path from t_image where is_effective = 1 and image_owner = 'platformAD' order by image_sort, create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select create_date,id,image_url,thumbnail_url,href_url,image_sort,image_path,thumbnail_path from t_image where is_effective = 1 and image_owner = 'platformAD' order by image_sort, create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select create_date,id,image_url,thumbnail_url,href_url,image_sort,image_path,thumbnail_path from t_image where is_effective = 1 and image_owner = 'platformAD' order by create_date desc;
;-- -. . -..- - / . -. - .-. -.--
select create_date,id,image_url,thumbnail_url,href_url,image_sort,image_path,thumbnail_path from t_image where is_effective = 1 and image_owner = 'platformAD' order by create_date;
;-- -. . -..- - / . -. - .-. -.--
select * from t_image where is_effective = 1 and image_owner = 'platformAD' order by create_date;
;-- -. . -..- - / . -. - .-. -.--
select * from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by r.shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,r.shop_no from t_shop s LEFT INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by r.shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,r.shop_no from t_shop s LEFT JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by r.shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,case r.shop_no when null then 99999 else r.shop_no end from t_shop s LEFT JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by r.shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,(case r.shop_no when null then 99999 else r.shop_no end) as shop_no from t_shop s LEFT JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,(case when isnull(r.shop_no) then 99999 else r.shop_no end) as shop_no from t_shop s LEFT JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,(case when isnull(r.shop_no) then 99999999 else r.shop_no end) as shop_no from t_shop s LEFT JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,(case when isnull(r.shop_no) then 99999999 else r.shop_no end) as shop_no from t_shop s right JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
select *,(case when isnull(r.shop_no) then 99999999 else r.shop_no end) as shop_no from t_shop s left JOIN t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by shop_no, r.update_time desc, s.create_time desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT
  s.id ,
  s.logo,
  s.name,
  r.shop_no
FROM
  t_shop s
  INNER
  JOIN
  t_shop_recommend r ON
                       (s.id = r.shop_id)
WHERE
  s. STATUS = 2
  OR s.
     STATUS
     =
     3
ORDER BY
  r.shop_no, r.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select * ,(case when isnull(r.shop_no) then 99999999 else r.shop_no end) as shop_no from t_shop s left join t_shop_recommend r ON (s.id = r.shop_id) where 1=1 order by shop_no, r.update_time desc, s.create_time desc LIMIT 10 OFFSET 0;
;-- -. . -..- - / . -. - .-. -.--
use mpr_img;
;-- -. . -..- - / . -. - .-. -.--
select concat('logo-fmr-', publisher_shop_id), seller_account from mpr_pss.t_shop where logo is null or isli_logo is null;
;-- -. . -..- - / . -. - .-. -.--
select concat('logo-mpr-', publisher_shop_id), seller_account from mpr_pss.t_shop where logo is null;
;-- -. . -..- - / . -. - .-. -.--
select concat('logo-fmr-', publisher_shop_id), seller_account from mpr_pss.t_shop where isli_logo is null;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pss.t_shop a, mpr_img.t_image b, (select publisher_shop_id, concat('logo-mpr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where logo is null) c
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
select a.publisher_shop_id, a.logo, b.image_url, c.target_id, c.owner_id from mpr_pss.t_shop a, mpr_img.t_image b, (select publisher_shop_id, concat('logo-mpr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where logo is null) c
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
update
  mpr_pss.t_shop a,
  mpr_img.t_image b,
  (select publisher_shop_id, concat('logo-mpr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where logo is null) c
set a.logo = b.image_url
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
select
    a.publisher_shop_id,
    a.logo, b.image_url,
    c.target_id,
    c.owner_id
from
  mpr_pss.t_shop a,
  mpr_img.t_image b,
  (select publisher_shop_id, concat('logo-mpr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where logo is null) c
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
select
  a.publisher_shop_id,
  a.logo, b.image_url,
  c.target_id,
  c.owner_id
from
  mpr_pss.t_shop a,
  mpr_img.t_image b,
  (select publisher_shop_id, concat('logo-fmr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where isli_logo is null) c
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
update
    mpr_pss.t_shop a,
    mpr_img.t_image b,
    (select publisher_shop_id, concat('logo-fmr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where isli_logo is null) c
set a.isli_logo = b.image_url
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
select
  a.publisher_shop_id,
  a.isli_logo, b.image_url,
  c.target_id,
  c.owner_id
from
  mpr_pss.t_shop a,
  mpr_img.t_image b,
  (select publisher_shop_id, concat('logo-fmr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where isli_logo is null) c
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_consumer MODIFY birthday TIMESTAMP DEFAULT '0000-00-00 00:00:00' COMMENT '出生日期';
;-- -. . -..- - / . -. - .-. -.--
use mpr_pcs;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 where login_name not like '%@%' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 where login_name like 'huangwq@mpreader.com' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 where login_name like '15767665989@163.com' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
commit;
;-- -. . -..- - / . -. - .-. -.--
SELECT s.id , s.logo, s.name, r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE shop_id in ( 4 ) ORDER BY r.shop_no, r.update_time desc limit 1, 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT s.id , s.logo, s.name, r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE shop_id in ( 4 ) ORDER BY r.shop_no, r.update_time desc limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT s.id , s.logo, s.name, r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE shop_id in ( 4 ) ORDER BY r.shop_no, r.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT id FROM t_shop_recommend WHERE id in ( 4 ) ORDER BY r.shop_no, r.update_time desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT id FROM t_shop_recommend WHERE id in ( 4 ) ORDER BY shop_no, update_time desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT shop_id FROM t_shop_recommend WHERE shop_id in ( 4 ) ORDER BY shop_no, update_time desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT shop_no FROM t_shop_recommend WHERE shop_id in ( 4 ) ORDER BY shop_no, update_time desc;
;-- -. . -..- - / . -. - .-. -.--
select * from t_shop_recommend where shop_no > (SELECT shop_no FROM t_shop_recommend WHERE shop_id in ( 4 ) ORDER BY shop_no, update_time desc limit 0, 1);
;-- -. . -..- - / . -. - .-. -.--
select * from t_shop_recommend where shop_no > (SELECT shop_no FROM t_shop_recommend WHERE shop_id in ( 4 ) ORDER BY shop_no, update_time desc limit 0, 1) limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
select * from t_shop_recommend where shop_no < (SELECT shop_no FROM t_shop_recommend WHERE shop_id in ( 4 ) ORDER BY shop_no, update_time desc limit 0, 1) limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
select * from t_shop_recommend where shop_no < (SELECT shop_no FROM t_shop_recommend WHERE shop_id in ( 99 ) ORDER BY shop_no, update_time desc limit 0, 1) limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
select * from t_shop_recommend where shop_no < (SELECT shop_no FROM t_shop_recommend WHERE shop_id in ( -11 ) ORDER BY shop_no, update_time desc limit 0, 1) limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
use mpr_pss;
;-- -. . -..- - / . -. - .-. -.--
select r.shop_id from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_no (SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 682 ) ORDER BY r.shop_no limit 0, 1) limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
select r.shop_id from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_no < (SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc limit 0, 1) limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc limit 0, 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc;
;-- -. . -..- - / . -. - .-. -.--
select r.shop_id from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_no < (
  SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc limit 0, 1
);
;-- -. . -..- - / . -. - .-. -.--
select r.shop_id from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_no < (
  SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc limit 0, 1
) ORDER BY r.shop_no asc;
;-- -. . -..- - / . -. - .-. -.--
select r.shop_id from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_no < (
  SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc limit 0, 1
) ORDER BY r.shop_no desc;