package com.alipay.mobilesecurity.biz.gw.service.approve;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilesecurity.core.model.approve.CancelApproveReq;
import com.alipay.mobilesecurity.core.model.approve.CancelApproveRes;
import com.alipay.mobilesecurity.core.model.approve.ConfirmApproveReq;
import com.alipay.mobilesecurity.core.model.approve.ConfirmApproveRes;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveReq;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;
import com.alipay.mobilesecurity.core.model.approve.QueryApproveRecordReq;
import com.alipay.mobilesecurity.core.model.approve.QueryApproveRecordRes;

public abstract interface ApproveFacade
{
  @OperationType("alipay.mobile.security.approve.cancel")
  @CheckLogin
  public abstract CancelApproveRes cancelApprove(CancelApproveReq paramCancelApproveReq);

  @OperationType("alipay.mobile.security.approve.confirm")
  @CheckLogin
  public abstract ConfirmApproveRes confirmApprove(ConfirmApproveReq paramConfirmApproveReq);

  @OperationType("alipay.mobile.security.approve.prepare")
  @CheckLogin
  public abstract PrepareApproveRes prepareApprove(PrepareApproveReq paramPrepareApproveReq);

  @OperationType("alipay.mobile.security.approve.querylist")
  @CheckLogin
  public abstract QueryApproveRecordRes queryApproveRecordList(QueryApproveRecordReq paramQueryApproveRecordReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.approve.ApproveFacade
 * JD-Core Version:    0.6.2
 */