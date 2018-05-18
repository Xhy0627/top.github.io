USE mpr_cpps;
;-- -. . -..- - / . -. - .-. -.--
select * from t_processing_file where goods_id = '119943';
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_consumer MODIFY birthday datetime DEFAULT '0000-00-00 00:00:00' COMMENT '出生日期';
;-- -. . -..- - / . -. - .-. -.--
use mpr_pgs;
;-- -. . -..- - / . -. - .-. -.--
select * from t_goods
where id = 120069;
;-- -. . -..- - / . -. - .-. -.--
select * from t_publication_book
where id = 119765;
;-- -. . -..- - / . -. - .-. -.--
use mpr_pcs;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pcs.t_consumer where login_name like '13631693333';
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pcs.t_consumer where login_name not like '%@%';
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 login_name not like '%@%' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
update mpr_pcs.t_consumer set status = 0 where login_name not like '%@%' and status = 1;
;-- -. . -..- - / . -. - .-. -.--
commit;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pcs.t_consumer where login_name not like '%@%' and status = 1;