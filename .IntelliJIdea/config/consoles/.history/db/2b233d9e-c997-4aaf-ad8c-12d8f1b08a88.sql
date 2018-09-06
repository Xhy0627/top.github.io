use mpr_rds;
;-- -. . -..- - / . -. - .-. -.--
select * from t_media_publication_info where goods_id=1079;
;-- -. . -..- - / . -. - .-. -.--
USE mpr_pgs;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 4;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pss.t_shop order by create_time desc limit 0,10;
;-- -. . -..- - / . -. - .-. -.--
select * from mpr_pss.t_shop where publisher_shop_id=97;