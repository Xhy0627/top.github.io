USE mpr_cpps;
;-- -. . -..- - / . -. - .-. -.--
select * from t_processing_file where goods_id = '119943';
;-- -. . -..- - / . -. - .-. -.--
use mpr_pcs;
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