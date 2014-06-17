package com.taobao.securityjni.a;

import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.connector.ConnectorHelper;

public final class a
  implements ConnectorHelper
{
  public final String getApiUrl()
  {
    String str = "http://api.m.taobao.com/work/dns_cache";
    if (GlobalInit.GetSecurityDebugMode())
    {
      str = "http://10.73.59.100/dns.txt";
      new StringBuilder("DsCfgConnectorHelper:url=").append(str).toString();
    }
    return str;
  }

  public final Object syncPaser(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof String)))
      return paramObject;
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.a.a
 * JD-Core Version:    0.6.2
 */