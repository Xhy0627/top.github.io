#后台新增冻结，解冻后，登陆时判断了本地账号的状态。之前旧数据存在部分默认为未激活实际是激活了的数据，这里统一处理
update mpr_pcs.t_consumer set status = 0 where login_name not like '%@%' and status = 1;