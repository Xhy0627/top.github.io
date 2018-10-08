select * from t_resource_temporary where isli_code='000002-100000000002486-4'

select * from t_resource_temporary where status = 2 order by update_time desc limit 0, 100



select
  ts.*, tsu.*
from t_service ts
  left join t_service_user tsu on ts.id = tsu.service_id
where 1 = 1 and tsu.user_id is null