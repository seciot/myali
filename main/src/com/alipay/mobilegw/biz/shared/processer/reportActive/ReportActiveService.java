package com.alipay.mobilegw.biz.shared.processer.reportActive;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface ReportActiveService
{
  @OperationType("alipay.client.reportActive")
  public abstract void report(ReportActiveReq paramReportActiveReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.reportActive.ReportActiveService
 * JD-Core Version:    0.6.2
 */