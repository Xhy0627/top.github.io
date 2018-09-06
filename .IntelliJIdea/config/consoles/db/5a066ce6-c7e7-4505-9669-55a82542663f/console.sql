USE mpr_pgs;
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 6 AND tgbi.goods_name LIKE CONCAT('%', '链码的艺术', '%');