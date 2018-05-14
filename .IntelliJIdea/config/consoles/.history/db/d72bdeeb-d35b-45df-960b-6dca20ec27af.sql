USE mpr_cpps;
;-- -. . -..- - / . -. - .-. -.--
select * from t_processing_file where goods_id = '119943';
;-- -. . -..- - / . -. - .-. -.--
use mpr_pcs;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE t_consumer MODIFY birthday datetime DEFAULT '0000-00-00 00:00:00' COMMENT '出生日期';