package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class SyncCommandTaskMetaReq
  implements Serializable
{
  private static final long serialVersionUID = 754960583207528325L;
  private String alipayWalletVersion;
  private String osName;
  private int osVersion;
  private List<String> uuidList;

  public String getAlipayWalletVersion()
  {
    return this.alipayWalletVersion;
  }

  public String getOsName()
  {
    return this.osName;
  }

  public int getOsVersion()
  {
    return this.osVersion;
  }

  public List<String> getUuidList()
  {
    return this.uuidList;
  }

  public void setAlipayWalletVersion(String paramString)
  {
    this.alipayWalletVersion = paramString;
  }

  public void setOsName(String paramString)
  {
    this.osName = paramString;
  }

  public void setOsVersion(int paramInt)
  {
    this.osVersion = paramInt;
  }

  public void setUuidList(List<String> paramList)
  {
    this.uuidList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.SyncCommandTaskMetaReq
 * JD-Core Version:    0.6.2
 */