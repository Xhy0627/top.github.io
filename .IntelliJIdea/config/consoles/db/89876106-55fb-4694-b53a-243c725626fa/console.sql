ALTER TABLE t_consumer MODIFY birthday TIMESTAMP DEFAULT '0000-00-00 00:00:00' COMMENT '出生日期';

update mpr_pcs.t_consumer set status = 0 where login_name like '15767665989@163.com' and status = 1;
commit


select r.shop_id from t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) where (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_no < (
  SELECT r.shop_no FROM t_shop s INNER JOIN t_shop_recommend r ON (s.id = r.shop_id) WHERE (s. STATUS = 2 OR s. STATUS = 3) AND r.shop_id in ( 502 ) ORDER BY r.shop_no asc limit 0, 1
) ORDER BY r.shop_no desc limit 0, 1