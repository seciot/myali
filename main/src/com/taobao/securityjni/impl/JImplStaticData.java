package com.taobao.securityjni.impl;

import com.taobao.securityjni.errorcode.SENotSupportedMethodError;
import com.taobao.securityjni.intelface.IStaticData;
import com.taobao.securityjni.tools.DataContext;

public class JImplStaticData
  implements IStaticData
{
  public String getAppKey(DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }

  public String getExtraData(String paramString)
  {
    throw new SENotSupportedMethodError();
  }

  public String getMMPid()
  {
    throw new SENotSupportedMethodError();
  }

  public String getTtid()
  {
    throw new SENotSupportedMethodError();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.JImplStaticData
 * JD-Core Version:    0.6.2
 */