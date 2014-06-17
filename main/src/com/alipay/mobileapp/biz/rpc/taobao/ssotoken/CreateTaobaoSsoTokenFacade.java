package com.alipay.mobileapp.biz.rpc.taobao.ssotoken;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.taobao.ssotoken.model.CreateTaobaoSsoTokenResult;

public abstract interface CreateTaobaoSsoTokenFacade
{
  @OperationType("alipay.client.createTaobaoSSoToken")
  public abstract CreateTaobaoSsoTokenResult createTaobaoSsoToken(String paramString1, String paramString2, String paramString3, String paramString4);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.taobao.ssotoken.CreateTaobaoSsoTokenFacade
 * JD-Core Version:    0.6.2
 */