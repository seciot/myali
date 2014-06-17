package com.alipay.mobile.command.api;

import com.alipay.mobile.command.api.model.GetRCTaskReq;
import com.alipay.mobile.command.api.model.GetRCTaskRes;
import com.alipay.mobile.command.api.model.ReportStatusReq;
import com.alipay.mobile.command.api.model.SyncCommandMetaRes;
import com.alipay.mobile.command.api.model.SyncCommandTaskMetaReq;
import com.alipay.mobile.command.api.model.SyncTaskMetaRes;
import com.alipay.mobile.command.rpc.proxy.OperationType;

public abstract interface CmdCenterFacade
{
  @OperationType("alipay.client.mobilecmdcenter.getRCTask")
  public abstract GetRCTaskRes getRCTask(GetRCTaskReq paramGetRCTaskReq);

  @OperationType("alipay.client.mobilecmdcenter.reportStatus")
  public abstract void reportStatus(ReportStatusReq paramReportStatusReq);

  @OperationType("alipay.client.mobilecmdcenter.syncCommand")
  public abstract SyncCommandMetaRes syncCommand(SyncCommandTaskMetaReq paramSyncCommandTaskMetaReq);

  @OperationType("alipay.client.mobilecmdcenter.syncTask")
  public abstract SyncTaskMetaRes syncTask(SyncCommandTaskMetaReq paramSyncCommandTaskMetaReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.CmdCenterFacade
 * JD-Core Version:    0.6.2
 */