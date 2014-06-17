package com.alipay.mobile.framework.service;

import com.alipay.mobile.framework.MicroDescription;

public class ServiceDescription extends MicroDescription
{
  private String a;
  private boolean b = true;

  public String getInterfaceClass()
  {
    return this.a;
  }

  public boolean isLazy()
  {
    return this.b;
  }

  public void setInterfaceClass(String paramString)
  {
    this.a = paramString;
  }

  public void setLazy(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ServiceDescription
 * JD-Core Version:    0.6.2
 */