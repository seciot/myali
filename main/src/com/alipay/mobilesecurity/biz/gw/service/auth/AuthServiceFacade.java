package com.alipay.mobilesecurity.biz.gw.service.auth;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.req.CompleteAuthRequest;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.req.SubmitTidReq;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthBaseResult;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.result.AuthListResult;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.result.SubmitTidResult;

public abstract interface AuthServiceFacade
{
  @OperationType("alipay.mobile.security.mobileauth.auth.completeauth")
  @CheckLogin
  public abstract AuthBaseResult completeAuth(CompleteAuthRequest paramCompleteAuthRequest);

  @OperationType("alipay.mobile.security.mobileauth.manage.list")
  @CheckLogin
  public abstract AuthListResult getAllValidAuth();

  @OperationType("alipay.mobile.security.mobileauth.manage.cancle")
  @CheckLogin
  public abstract AuthBaseResult removeAuth(String paramString);

  @OperationType("alipay.mobile.security.mobileauth.auth.submittid")
  @CheckLogin
  public abstract SubmitTidResult submitTid(SubmitTidReq paramSubmitTidReq);

  @OperationType("alipay.mobile.security.mobileauth.auth.upgrade")
  @CheckLogin
  public abstract AuthBaseResult upgradeAuth(SubmitTidReq paramSubmitTidReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.AuthServiceFacade
 * JD-Core Version:    0.6.2
 */