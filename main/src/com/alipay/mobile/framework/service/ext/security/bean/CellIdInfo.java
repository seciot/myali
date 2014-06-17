package com.alipay.mobile.framework.service.ext.security.bean;

import java.io.Serializable;

public class CellIdInfo
  implements Serializable
{
  private static final long serialVersionUID = -3642647561168398482L;
  private int cid;
  private int lac;
  private int mcc;
  private int mnc;
  private String type;

  public int getCid()
  {
    return this.cid;
  }

  public int getLac()
  {
    return this.lac;
  }

  public int getMcc()
  {
    return this.mcc;
  }

  public int getMnc()
  {
    return this.mnc;
  }

  public String getType()
  {
    return this.type;
  }

  public void setCid(int paramInt)
  {
    this.cid = paramInt;
  }

  public void setLac(int paramInt)
  {
    this.lac = paramInt;
  }

  public void setMcc(int paramInt)
  {
    this.mcc = paramInt;
  }

  public void setMnc(int paramInt)
  {
    this.mnc = paramInt;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.CellIdInfo
 * JD-Core Version:    0.6.2
 */