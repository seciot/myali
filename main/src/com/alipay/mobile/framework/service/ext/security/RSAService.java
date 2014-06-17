package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class RSAService extends ExternalService
{
  public abstract String RSAEncrypt(String paramString, boolean paramBoolean);

  public abstract String getRsaKey();

  public abstract String getRsaTS();

  public abstract long getSafeRSATS();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.RSAService
 * JD-Core Version:    0.6.2
 */