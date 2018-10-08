select trf.*, trm.status as status, trm.id as id from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code ORDER BY create_time


select trf.update_time,trm.status as status, trf.* from t_resource_temporary trm, t_resource_file trf where trm.isli_code = trf.isli_code AND trm.status = 3 AND trm.status in ( 3 , 5 )
ORDER BY trf.update_time asc LIMIT 0,10


select
  count(1)
from t_resource_temporary trm
  join t_resource_file trf on trm.isli_code = trf.isli_code
  left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code
where


select *, case when trmd.status is null then -1 else trmd.status end as delStatus from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where trm.isli_code = '010002-000000000000000000100004-5'


select trm.status as status, trm.update_time, trm.audit_desc as auditDesc, trf.*, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm join t_resource_file trf on trm.isli_code = trf.isli_code left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where 1 = 1

select *, case when trmd.status is null then -1 else trmd.status end as delStatus, trmd.audit_desc as delAuditDesc from t_resource_temporary trm left join t_resource_temporary_del trmd on trm.isli_code = trmd.isli_code where trm.isli_code = '000002-000000000005549-3'