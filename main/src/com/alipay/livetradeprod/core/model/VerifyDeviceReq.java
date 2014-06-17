package com.alipay.livetradeprod.core.model;

import java.io.Serializable;

public class VerifyDeviceReq
  implements Serializable
{
  public String clientKey;
  public String imei;
  public String imsi;
  public String tid;
  public String userId;
  public String vimei;
  public String vimsi;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.VerifyDeviceReq
 * JD-Core Version:    0.6.2
 */