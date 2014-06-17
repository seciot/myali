package com.alipay.mobile.common.transport.http;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class HttpUrlHeader
  implements Serializable
{
  private Map a = new HashMap();

  public String getHead(String paramString)
  {
    return (String)this.a.get(paramString);
  }

  public Map getHeaders()
  {
    return this.a;
  }

  public void setHead(String paramString1, String paramString2)
  {
    this.a.put(paramString1, paramString2);
  }

  public void setHeaders(Map paramMap)
  {
    this.a = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpUrlHeader
 * JD-Core Version:    0.6.2
 */