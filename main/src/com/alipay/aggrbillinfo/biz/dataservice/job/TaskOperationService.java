package com.alipay.aggrbillinfo.biz.dataservice.job;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import com.alipay.aggrbillinfo.biz.mgnt.task.info.ActionCompleteInfo;
import com.alipay.aggrbillinfo.biz.mgnt.task.info.CaptchaResult;
import com.alipay.aggrbillinfo.biz.mgnt.task.info.TaskInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface TaskOperationService
{
  @OperationType("alipay.mobile.aggrbillinfo.job.completeAction")
  public abstract Result completeAction(ActionCompleteInfo paramActionCompleteInfo);

  @OperationType("alipay.mobile.aggrbillinfo.job.findTaskStatus")
  public abstract TaskInfoResult findTaskStatus(String paramString);

  @OperationType("alipay.mobile.aggrbillinfo.job.refreshCaptcha")
  public abstract CaptchaResult refreshCaptcha(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.dataservice.job.TaskOperationService
 * JD-Core Version:    0.6.2
 */