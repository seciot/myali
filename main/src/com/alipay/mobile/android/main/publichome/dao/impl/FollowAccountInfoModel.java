package com.alipay.mobile.android.main.publichome.dao.impl;

import com.alipay.publiccore.client.model.FollowAccountInfo;
import com.alipay.publiccore.client.model.OperateProperties;
import com.j256.ormlite.field.DatabaseField;

public class FollowAccountInfoModel
{
  public static final String uniqueIndexName = "followaccountinfo_uniqueindex";

  @DatabaseField
  public String avatar;

  @DatabaseField
  public boolean cancelDefaultTop;

  @DatabaseField
  public String cltDefIconType;

  @DatabaseField
  public String defaultOrder;

  @DatabaseField
  public String deleteType;

  @DatabaseField(uniqueIndex=true, uniqueIndexName="followaccountinfo_uniqueindex")
  public String followObjectId;

  @DatabaseField
  public String followType;

  @DatabaseField
  public int forceTopOrder;

  @DatabaseField
  public long gmtFollowTime;

  @DatabaseField
  public String gotoAppUri;

  @DatabaseField(generatedId=true)
  public int id;

  @DatabaseField
  public String latestMsg;

  @DatabaseField
  public String latestMsgThridAccount;

  @DatabaseField
  public long latestMsgTime;

  @DatabaseField
  public boolean localDelete;

  @DatabaseField
  public String msgNoteType;

  @DatabaseField
  public String name;

  @DatabaseField
  public String publicType;

  @DatabaseField
  public boolean top;

  @DatabaseField
  public long topOperateTime;

  @DatabaseField
  public String topType;

  @DatabaseField
  public int unReadMsgCount;

  @DatabaseField(uniqueIndex=true, uniqueIndexName="followaccountinfo_uniqueindex")
  public String userId;

  @DatabaseField
  public String wgtMsgId;

  public FollowAccountInfoModel()
  {
  }

  public FollowAccountInfoModel(FollowAccountInfo paramFollowAccountInfo)
  {
    OperateProperties localOperateProperties = paramFollowAccountInfo.getOperateProperties();
    this.avatar = paramFollowAccountInfo.avatar;
    this.cltDefIconType = paramFollowAccountInfo.cltDefIconType;
    String str1;
    if (localOperateProperties != null)
    {
      str1 = localOperateProperties.getDefaultOrder();
      this.defaultOrder = str1;
      if (localOperateProperties == null)
        break label184;
    }
    label184: for (String str2 = localOperateProperties.getDeleteType(); ; str2 = null)
    {
      this.deleteType = str2;
      this.followObjectId = paramFollowAccountInfo.getFollowObjectId();
      this.followType = paramFollowAccountInfo.getFollowType();
      this.gmtFollowTime = paramFollowAccountInfo.getGmtFollowTime();
      this.gotoAppUri = paramFollowAccountInfo.getGotoAppUri();
      this.id = paramFollowAccountInfo.getId();
      this.latestMsg = paramFollowAccountInfo.getLatestMsg();
      this.latestMsgThridAccount = paramFollowAccountInfo.getLatestMsgThridAccount();
      this.latestMsgTime = paramFollowAccountInfo.getLatestMsgTime();
      this.msgNoteType = paramFollowAccountInfo.msgNoteType;
      this.name = paramFollowAccountInfo.name;
      this.publicType = paramFollowAccountInfo.publicType;
      String str3 = null;
      if (localOperateProperties != null)
        str3 = localOperateProperties.getTopType();
      this.topType = str3;
      this.unReadMsgCount = paramFollowAccountInfo.unReadMsgCount;
      this.wgtMsgId = paramFollowAccountInfo.getWgtMsgId();
      return;
      str1 = null;
      break;
    }
  }

  public String getAvatar()
  {
    return this.avatar;
  }

  public String getCltDefIconType()
  {
    return this.cltDefIconType;
  }

  public String getDefaultOrder()
  {
    return this.defaultOrder;
  }

  public String getDeleteType()
  {
    return this.deleteType;
  }

  public String getFollowObjectId()
  {
    return this.followObjectId;
  }

  public String getFollowType()
  {
    return this.followType;
  }

  public int getForceTopOrder()
  {
    return this.forceTopOrder;
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

  public String getPublicType()
  {
    return this.publicType;
  }

  public long getTopOperateTime()
  {
    return this.topOperateTime;
  }

  public String getTopType()
  {
    return this.topType;
  }

  public int getUnReadMsgCount()
  {
    return this.unReadMsgCount;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getWgtMsgId()
  {
    return this.wgtMsgId;
  }

  public boolean isCancelDefaultTop()
  {
    return this.cancelDefaultTop;
  }

  public boolean isLocalDelete()
  {
    return this.localDelete;
  }

  public boolean isTop()
  {
    return this.top;
  }

  public void setAvatar(String paramString)
  {
    this.avatar = paramString;
  }

  public void setCancelDefaultTop(boolean paramBoolean)
  {
    this.cancelDefaultTop = paramBoolean;
  }

  public void setCltDefIconType(String paramString)
  {
    this.cltDefIconType = paramString;
  }

  public void setDefaultOrder(String paramString)
  {
    this.defaultOrder = paramString;
  }

  public void setDeleteType(String paramString)
  {
    this.deleteType = paramString;
  }

  public void setFollowObjectId(String paramString)
  {
    this.followObjectId = paramString;
  }

  public void setFollowType(String paramString)
  {
    this.followType = paramString;
  }

  public void setForceTopOrder(int paramInt)
  {
    this.forceTopOrder = paramInt;
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

  public void setLocalDelete(boolean paramBoolean)
  {
    this.localDelete = paramBoolean;
  }

  public void setMsgNoteType(String paramString)
  {
    this.msgNoteType = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setPublicType(String paramString)
  {
    this.publicType = paramString;
  }

  public void setTop(boolean paramBoolean)
  {
    this.top = paramBoolean;
  }

  public void setTopOperateTime(long paramLong)
  {
    this.topOperateTime = paramLong;
  }

  public void setTopType(String paramString)
  {
    this.topType = paramString;
  }

  public void setUnReadMsgCount(int paramInt)
  {
    this.unReadMsgCount = paramInt;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setWgtMsgId(String paramString)
  {
    this.wgtMsgId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.dao.impl.FollowAccountInfoModel
 * JD-Core Version:    0.6.2
 */