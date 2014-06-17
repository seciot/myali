package com.alipay.mobile.command.api.model;

import java.io.Serializable;

public class MapConstructor
  implements Serializable
{
  private static final long serialVersionUID = -2342245045465028952L;
  private String key;
  private String value;

  public String getKey()
  {
    return this.key;
  }

  public String getValue()
  {
    return this.value;
  }

  public void setKey(String paramString)
  {
    this.key = paramString;
  }

  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.MapConstructor
 * JD-Core Version:    0.6.2
 */