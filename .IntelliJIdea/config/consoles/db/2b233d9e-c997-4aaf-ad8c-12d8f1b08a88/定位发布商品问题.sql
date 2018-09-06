1，定位到商品ID

#从mpr_pgs商品表查询到商品ID
#商品状态0：待销售(下架)、1：销售中(上架)、2：删除、3：强制下架(运营管理)、4：上传中、5：上传失败、6.预处理中、7：预处理失败、8：编辑中
USE mpr_pgs;
SELECT * FROM t_goods tg JOIN t_goods_base_info tgbi ON tg.goods_base_id = tgbi.id
WHERE tg.status = 4 AND tgbi.goods_name LIKE CONCAT('%', '20180307', '%');



2，获取上传标识

#查看CPPS的日志
#com.mpr.content.preprocessor.system.service.impl.UploadServiceImpl#applyUploadId
cat nohup.out | grep '发送上传文件信息: .*119683.*'
cat nohup.out | grep '发送mq消息到通知服务，记录回调业务系统地址: .*119683.*'							【cpps-queue-biz-callback-params-2-ns】
#定位到uploadId

USE mpr_cpps;
select * from t_upload_file where upload_id = '0bd4aea2a4364cb7b5cca6a8fca926ff'



3，上传回调

#查看CPPS的日志，根据上一步的uploadId来定位信息
#com.mpr.content.preprocessor.system.service.impl.UploadProcessorServiceImpl#uploadNotify
cat nohup.out | grep '上传结束回调：.*0bd4aea2a4364cb7b5cca6a8fca926ff.*'
cat nohup.out | grep '上传完成，发送预处理进度消息给通知服务。MQ消息内容:.*119683.*'					【cpps-queue-progress-2-biz】
cat nohup.out | grep '上传完成，发送MQ消息给预处理模块。uploadId:0bd4aea2a4364cb7b5cca6a8fca926ff'		【cpps-queue-uploaded】
cat nohup.out | grep '预处理收到上传完成MQ消息。 uploadId: 0bd4aea2a4364cb7b5cca6a8fca926ff'			【cpps-queue-uploaded】【cpps-queue-process-mpr-2-eats】【cpps-queue-process-mprx-2-eats】

#根据商品ID，定位到预处理的任务ID
USE mpr_cpps;
select * from t_processing_file where goods_id = '119683';

#根据预处理任务ID定位信息
#com.mpr.content.preprocessor.system.mq.consumer.MessageConsumer#receiveProcessProgress
cat nohup.out | grep 'Received EatsProcessCallbackMessage message = <.*3575.*>'
cat nohup.out | grep 'Received EatsProcessCallbackMessage message = <.*3575.*"progress":"100".*>' 		【eats-queue-progress-2-cpps】


#com.mpr.content.preprocessor.system.service.impl.PreprocessorServiceImpl#beforeFinished
cat nohup.out | grep 'beforeFinished -------------------：.*119683.*'
#com.mpr.content.preprocessor.system.service.impl.PreprocessorServiceImpl#syncMprIsliTarget
cat nohup.out | grep '接收到的参数IsliTargetUploader：<.*119683.*>'
cat nohup.out | grep 'copyMultiMediaToIsliTargetDir --> copyFileWithSystemCPCommand .*119683'
cat nohup.out | grep '生成describe.json文件内容:<.*>,goodsId : 119683 -> .*'
cat nohup.out | grep 'describe.json<.*>输出成功'
cat nohup.out | grep 'goodsId : 119683 upload2GTP to .*'
cat nohup.out | grep 'goodsId : 119683 upload2GTP to .* success'
cat nohup.out | grep 'goodsId : 119683 syncMprIsliTarget success'
#com.mpr.content.preprocessor.system.service.impl.PreprocessorServiceImpl#beforeFinished
cat nohup.out | grep '拷贝到发布区：<119683>.*'
cat nohup.out | grep '预处理完成,发送MQ消息到cpps-queue-pub-file-2-rds队列.*119683.*'
cat nohup.out | grep '向KMG同步密钥与内容绑定出现错误<119683>'
cat nohup.out | grep '预处理结束时，发生异常：<119683>.*'



4，通知服务

#com.mpr.notification.message.consumer.MessageConsumer#receiveProgress(com.mpr.notification.model.ProgressNotifier, java.util.Map<java.lang.String,java.lang.Object>)
cat nohup.out | grep 'Received Progress message = <.*119683.*>'
cat nohup.out | grep 'Received Progress message = <.*119683.*"progress":20.*>'							【cpps-queue-progress-2-biz】



5，商品服务

#com.mpr.panmedia.goods.service.impl.PublishGoodsServiceImpl#updateProgress
cat nohup.out | grep '接收到进度通知消息: .*119683.*'
cat nohup.out | grep '接收到进度通知消息: .*119683.*"progress":100.*'
cat nohup.out | grep '.*预处理完成。从缓存中移除商品进度信息。goods id:119683'
cat nohup.out | grep '预处理失败。从缓存中移除商品进度信息。goods id:119683'
cat nohup.out | grep '更新商品状态。goods:.*119683.*, 更新结果:.*'

cat nohup.out | grep '接收到进度通知消息: .*118959.*"progress":100.*' -n
cat nohup.out | head -n 122651 | tail -n +117994 > temp.out


t_sources
ns:
cat nohup.out | grep 'Received Source message = {}'
cat nohup.out | grep 'begin to send:{}'
pgs:
cat nohup.out | grep 'Request URL: /v1/sources, parameter: {}'
cat nohup.out | grep 'source change Receiver : {}'


#关联目标池存储 通知处理结果，并入库
#com.mpr.panmedia.goods.service.impl.StorageServiceImpl#isilDataNotify
cat nohup.out | grep 'storage params:.*1000000461.*'


#客户端预处理列表接口com.mpr.panmedia.goods.controller.PublishGoodsController#queryProgress
