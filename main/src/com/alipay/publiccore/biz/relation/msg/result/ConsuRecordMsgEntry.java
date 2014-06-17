package com.alipay.publiccore.biz.relation.msg.result;

import java.util.HashMap;
import java.util.Map;

public class ConsuRecordMsgEntry extends BaseMsgEntry
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

  public String getActionParam()
  {
    return this.actionParam;
  }

  public String getActionType()
  {
    return this.actionType;
  }

  public String getAmount()
  {
    return this.amount;
  }

  public String getCreateTime()
  {
    return this.createTime;
  }

  public Map<String, String> getExtInfo()
  {
    return this.extInfo;
  }

  public String getImageUrl()
  {
    return this.imageUrl;
  }

  public String getInOut()
  {
    return this.inOut;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getModifiedTime()
  {
    return this.modifiedTime;
  }

  public String getStatus()
  {
    return this.status;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public String getVoiceMemoUrl()
  {
    return this.voiceMemoUrl;
  }

  public boolean isShowAvatar()
  {
    return this.showAvatar;
  }

  public void setActionParam(String paramString)
  {
    this.actionParam = paramString;
  }

  public void setActionType(String paramString)
  {
    this.actionType = paramString;
  }

  public void setAmount(String paramString)
  {
    this.amount = paramString;
  }

  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }

  public void setExtInfo(Map<String, String> paramMap)
  {
    this.extInfo = paramMap;
  }

  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }

  public void setInOut(String paramString)
  {
    this.inOut = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setModifiedTime(String paramString)
  {
    this.modifiedTime = paramString;
  }

  public void setShowAvatar(boolean paramBoolean)
  {
    this.showAvatar = paramBoolean;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }

  public void setVoiceMemoUrl(String paramString)
  {
    this.voiceMemoUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.ConsuRecordMsgEntry
 * JD-Core Version:    0.6.2
 */