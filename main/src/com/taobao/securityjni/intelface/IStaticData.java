package com.taobao.securityjni.intelface;

import com.taobao.securityjni.tools.DataContext;

public abstract interface IStaticData
{
  public abstract String getAppKey(DataContext paramDataContext);

  public abstract String getExtraData(String paramString);

  public abstract String getMMPid();

  public abstract String getTtid();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.IStaticData
 * JD-Core Version:    0.6.2
 */