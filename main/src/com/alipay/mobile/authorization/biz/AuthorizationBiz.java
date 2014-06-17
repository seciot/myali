package com.alipay.mobile.authorization.biz;

import com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignReq;
import com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignRes;

public abstract interface AuthorizationBiz
{
  public abstract AuthSignRes a(AuthSignReq paramAuthSignReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.biz.AuthorizationBiz
 * JD-Core Version:    0.6.2
 */