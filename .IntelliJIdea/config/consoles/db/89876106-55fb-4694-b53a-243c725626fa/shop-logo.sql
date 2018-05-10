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

update
    mpr_pss.t_shop a,
    mpr_img.t_image b,
    (select publisher_shop_id, concat('logo-mpr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where logo is null) c
set a.logo = b.image_url
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;




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

update
    mpr_pss.t_shop a,
    mpr_img.t_image b,
    (select publisher_shop_id, concat('logo-fmr-', publisher_shop_id) as target_id, seller_account as owner_id from mpr_pss.t_shop where isli_logo is null) c
set a.isli_logo = b.image_url
where a.publisher_shop_id = c.publisher_shop_id and b.target_rel_id = c.target_id and b.image_owner = c.owner_id;