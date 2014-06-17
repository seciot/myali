package com.alipay.mobile.framework.service.ext.openplatform.service;

public abstract interface AuthorizeCallback
{
  public abstract void onAuthFailed();

  public abstract void onAuthSuccess(String paramString1, String paramString2);

  public abstract void onNotNeedAuth();

  public abstract void onUserCancel();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback
 * JD-Core Version:    0.6.2
 */