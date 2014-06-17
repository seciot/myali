package com.alipay.publiccore.client.model;

public class FollowAccountInfo
{
  public static final String uniqueIndexName = "followaccountinfo_uniqueindex";
  public String avatar;
  public String cltDefIconType;
  public String followObjectId;
  public String followType;
  public long gmtFollowTime;
  public String gotoAppUri;
  public int id;
  public String latestMsg;
  public String latestMsgThridAccount;
  public long latestMsgTime;
  public String msgNoteType;
  public String name;
  public OperateProperties operateProperties;
  public String publicType;
  public int unReadMsgCount;
  public String wgtMsgId;

  public String getAvatar()
  {
    return this.avatar;
  }

  public String getCltDefIconType()
  {
    return this.cltDefIconType;
  }

  public String getDeleteType()
  {
    if (this.operateProperties == null)
      return null;
    return this.operateProperties.getDeleteType();
  }

  public String getFollowObjectId()
  {
    return this.followObjectId;
  }

  public String getFollowType()
  {
    return this.followType;
  }

  public long getGmtFollowTime()
  {
    return this.gmtFollowTime;
  }

  public String getGotoAppUri()
  {
    return this.gotoAppUri;
  }

  public int getId()
  {
    return this.id;
  }

  public String getLatestMsg()
  {
    return this.latestMsg;
  }

  public String getLatestMsgThridAccount()
  {
    return this.latestMsgThridAccount;
  }

  public long getLatestMsgTime()
  {
    return this.latestMsgTime;
  }

  public String getMsgNoteType()
  {
    return this.msgNoteType;
  }

  public String getName()
  {
    return this.name;
  }

  public OperateProperties getOperateProperties()
  {
    return this.operateProperties;
  }

  public String getPublicType()
  {
    return this.publicType;
  }

  public String getTopType()
  {
    if (this.operateProperties == null)
      return null;
    return this.operateProperties.getTopType();
  }

  public int getUnReadMsgCount()
  {
    return this.unReadMsgCount;
  }

  public String getWgtMsgId()
  {
    return this.wgtMsgId;
  }

  public void setAvatar(String paramString)
  {
    this.avatar = paramString;
  }

  public void setCltDefIconType(String paramString)
  {
    this.cltDefIconType = paramString;
  }

  public void setFollowObjectId(String paramString)
  {
    this.followObjectId = paramString;
  }

  public void setFollowType(String paramString)
  {
    this.followType = paramString;
  }

  public void setGmtFollowTime(long paramLong)
  {
    this.gmtFollowTime = paramLong;
  }

  public void setGotoAppUri(String paramString)
  {
    this.gotoAppUri = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setLatestMsg(String paramString)
  {
    this.latestMsg = paramString;
  }

  public void setLatestMsgThridAccount(String paramString)
  {
    this.latestMsgThridAccount = paramString;
  }

  public void setLatestMsgTime(long paramLong)
  {
    this.latestMsgTime = paramLong;
  }

  public void setMsgNoteType(String paramString)
  {
    this.msgNoteType = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setOperateProperties(OperateProperties paramOperateProperties)
  {
    this.operateProperties = paramOperateProperties;
  }

  public void setPublicType(String paramString)
  {
    this.publicType = paramString;
  }

  public void setUnReadMsgCount(int paramInt)
  {
    this.unReadMsgCount = paramInt;
  }

  public void setWgtMsgId(String paramString)
  {
    this.wgtMsgId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.model.FollowAccountInfo
 * JD-Core Version:    0.6.2
 */