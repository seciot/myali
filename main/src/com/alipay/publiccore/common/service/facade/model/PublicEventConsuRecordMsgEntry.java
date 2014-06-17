package com.alipay.publiccore.common.service.facade.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class PublicEventConsuRecordMsgEntry extends PublicEventBaseMsgEntry
  implements Serializable
{
  public String actionParam = null;
  public String actionType = null;
  public String amount;
  public String createTime;
  public Map<String, String> extInfo = new HashMap();
  public String imageUrl;
  public String inOut = "none";
  public String memo;
  public String modifiedTime;
  public boolean showAvatar;
  public String status;
  public String title;
  public String tradeNo;
  public String voiceMemoUrl;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.PublicEventConsuRecordMsgEntry
 * JD-Core Version:    0.6.2
 */