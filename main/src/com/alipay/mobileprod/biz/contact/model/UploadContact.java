package com.alipay.mobileprod.biz.contact.model;

import java.io.Serializable;
import java.util.List;

public class UploadContact
  implements Serializable
{
  public String deviceId;
  public String ownerMobile;
  public String ownerName;
  public String ownerUid;
  public List<UploadContactRecord> recordList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.model.UploadContact
 * JD-Core Version:    0.6.2
 */