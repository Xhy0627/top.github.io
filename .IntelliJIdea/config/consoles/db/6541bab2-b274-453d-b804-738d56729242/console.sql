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


select rcs_system_id as rcsId, rcs_owner_name as rcsName from t_rcs_info

select
  ts.* ,
  case when tsau.status is null then 1 else tsau.status end as articleStatus
from t_service ts
  left join t_service_article_user tsau on ts.id = tsau.service_id AND tsau.user_id = 111
where 1 = 1 AND ts.id not in (select tsu.service_id from t_service_user tsu where tsu.`user_id` = 87)  ORDER BY ts.create_time desc



select tgm.mpr_file_size from mpr_pgs.t_goods tg left join mpr_pgs.t_goods_mpr tgm on tg.goods_type_id = tgm.id where tg.status=1 and tgm.mpr_file_size is not null
select sum(tgm.mpr_file_size) from mpr_pgs.t_goods tg left join mpr_pgs.t_goods_mpr tgm on tg.goods_type_id = tgm.id where tg.status=1 and tgm.mpr_file_size is not null
select count (1) from (select shop_id from mpr_pgs.t_goods where status=1 group by shop_id) temp


SELECT a.need_two_factor_login
FROM t_account a
WHERE a.account_id = 15396743960868555 OR a.username = 15396743960868555 OR a.email = 15396743960868555 OR a.cell_phone = 15396743960868555


SELECT IFNULL(FIND_IN_SET((select file_type from t_resource_file trf where trf.isli_code='010000-000000000000000800000082-9'), (select trtaa.type_array from t_resource_temporary_avoid_audit trtaa where trtaa.rcs_id='3232')), 0) AS result;

select length(repeat(" select 1 union all", 36))

select encrypt_symmetric_key from t_content_key
where content_identifier= '010000-000000000000009000000447-2' order by create_date desc limit 1

select (b.update_time is null or a.update_time > b.update_time) as laster from t_resource_file a left join t_resource_file_bak b on a.isli_code = b.isli_code where a.isli_code='010001-000000000000009000030202-3'


183	010000-000000000000009000000448-0	15402761301366296	signeddoc	F_S_F53C96EBFB1F814627FFC210EFA2B5AD	F_U_7812335946894BEAB1C4E697A7B8EA48		Bandari-满天星	test	b2b27ee68423afed9c529ca80605cec8		mp3	2	10548326	1、2、3、4	8446D8815B2E3E2BCF4EE28A800F6C61-2	已就绪	false	false		2018-12-06 09:20:22	chenzuyi	2018-12-06 10:47:17	chenzuyi			tset	test	2018-12-11 00:00:00	2018-12-11 00:00:00	"\"\\\"\\\\\\\"\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"{\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"playTime\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"263650\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"}\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\\\\\\\\\\\"\\\\\\\"\\\"\""	{"tpl_name":"cloud","tpl_id":"2","metadataIsli":[{"key":"langId","value":{"typeKey":"chi","typeValue":"汉语"}},{"key":"identifiers","value":null},{"key":"identifiersType","value":null},{"key":"isliCodeNumber","value":1},{"key":"keywords","value":null},{"key":"priceType","value":null},{"key":"publishCountry","value":null},{"key":"playTime"},{"key":"storageFormatId","value":"mp3"},{"key":"titleName","value":"Bandari-满天星"},{"key":"voiceFileSize","value":"10.06MB"}],"metadataUser":[],"metadataCloudTypeID":"2","tpl_version":"1.0","metadataCloudShow":[{"key":"题名","displayName":"题名","displayValue":"test"},{"key":"出版者名称","displayName":"出版者名称","displayValue":"hzp111"},{"key":"声道语种","displayName":"声道语种","displayValue":"鬼地方个234234"},{"key":"内容简介","displayName":"内容简介","displayValue":"飞洒地方"},{"key":"标签","displayName":"标签","displayValue":"撒打发斯蒂芬、发斯蒂芬"},{"key":"风格描述","displayName":"风格描述","displayValue":"和认同感和"},{"key":"来源","displayName":"来源","displayValue":"所发生的"},{"key":"专业属性","displayName":"专业属性","displayValue":"发斯蒂芬"},{"key":"ISLI编码","displayName":"ISLI编码","displayValue":"发斯蒂芬"},{"key":"资源分类","displayName":"资源分类","displayValue":"文化与自然遗产->博物馆->金银器"}],"metadataCloudTypeVersion":"1.0","metadataCloud":[{"key":"题名","value":"test"},{"key":"出版者名称","value":"hzp111"},{"key":"声道语种","value":"鬼地方个234234"},{"key":"内容简介","value":"飞洒地方"},{"key":"标签","value":"撒打发斯蒂芬、发斯蒂芬"},{"key":"风格描述","value":"和认同感和"},{"key":"来源","value":"所发生的"},{"key":"专业属性","value":"发斯蒂芬"},{"key":"ISLI编码","value":"发斯蒂芬"},{"key":"资源分类","value":{"value":"文化与自然遗产->博物馆->金银器","key":"A0003"}}],"menuUuid":"8446D8815B2E3E2BCF4EE28A800F6C61-2","metadataIsliShow":[{"key":"音频类型","value":"盒式录音带","name_str":"typeId_Name","dorpDown_flag":true},{"key":"语种","value":"汉语","name_str":"langId_Name","dorpDown_flag":true},{"key":"权利人","value":"undefined-","name_str":"rightsHolder","dorpDown_flag":false},{"key":"描述","value":"test","name_str":"description","dorpDown_flag":false}],"metadataCloudXml":"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<ObjectData>\n  <Object IsliCode=\"010000-000000000000009000000448-0\" ObjectName=\"Bandari-满天星\" CCID=\"文物陶器-音频类\" Extension=\"mp3\" FileSize=\"10548326\" From=\"a353e680ebc449928357c8d7d5fcddaa\" TemplateId=\"2\">\n    <MetaData>\n      <sAttribute enumType=\"7\" strName=\"资源分类\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"ISLI编码\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"风格描述\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"题名\">test</sAttribute>\n      <sAttribute enumType=\"0\" strName=\"来源\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"内容简介\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"标签\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"出版者名称\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"专业属性\"></sAttribute>\n      <sAttribute enumType=\"0\" strName=\"声道语种\"></sAttribute>\n    </MetaData>\n  </Object>\n</ObjectData>\n","metadataCloudType":null}	"<?xml version=""1.0"" encoding=""UTF-8""?>

<ObjectData>
  <Object IsliCode=""010000-000000000000009000000448-0"" ObjectName=""Bandari-满天星"" CCID=""文物陶器-音频类"" Extension=""mp3"" FileSize=""10548326"" From=""a353e680ebc449928357c8d7d5fcddaa"" TemplateId=""2"">
    <MetaData>
      <sAttribute enumType=""7"" strName=""资源分类""></sAttribute>
      <sAttribute enumType=""0"" strName=""ISLI编码""></sAttribute>
      <sAttribute enumType=""0"" strName=""风格描述""></sAttribute>
      <sAttribute enumType=""0"" strName=""题名"">test</sAttribute>
      <sAttribute enumType=""0"" strName=""来源""></sAttribute>
      <sAttribute enumType=""0"" strName=""内容简介""></sAttribute>
      <sAttribute enumType=""0"" strName=""标签""></sAttribute>
      <sAttribute enumType=""0"" strName=""出版者名称""></sAttribute>
      <sAttribute enumType=""0"" strName=""专业属性""></sAttribute>
      <sAttribute enumType=""0"" strName=""声道语种""></sAttribute>
    </MetaData>
  </Object>
</ObjectData>
"				2018-12-06 09:21:07	2018-12-06 09:21:29	SUCCESS			已生效



ALTER TABLE t_platform ADD CONSTRAINT t_platform_unique UNIQUE (platform_id);
ALTER TABLE t_platform_user_info ADD CONSTRAINT t_platform_user_info_unique UNIQUE (platform_id);
ALTER TABLE t_platform_rel_service ADD CONSTRAINT t_platform_rel_service_unique UNIQUE (platform_id, service_scope);

CREATE UNIQUE INDEX t_platform_rel_service_unique ON t_platform_rel_service (platform_id, service_scope);
truncate t_platform_rel_service


ALTER TABLE t_resource_temporary ADD download_start_time timestamp DEFAULT NULL NULL COMMENT '最后一个下载任务的开始时间';
ALTER TABLE t_resource_temporary ADD download_done_time timestamp DEFAULT NULL NULL COMMENT '最后一个下载任务的完成时间';
ALTER TABLE t_resource_temporary ADD download_mesg varchar(200) DEFAULT NULL NULL COMMENT '最后一个下载任务的完成信息';


update t_resource_temporary set status=2 where  status=1