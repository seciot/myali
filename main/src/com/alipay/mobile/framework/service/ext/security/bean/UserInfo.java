package com.alipay.mobile.framework.service.ext.security.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.j256.ormlite.field.DatabaseField;
import java.io.Serializable;

public class UserInfo
  implements Parcelable, Serializable, Cloneable
{
  public static final Parcelable.Creator<UserInfo> CREATOR = new a();
  private static final long serialVersionUID = 1L;

  @DatabaseField
  private boolean autoLogin;

  @DatabaseField
  private String extern_token;

  @DatabaseField
  private String gestureErrorNum;

  @DatabaseField
  private String gesturePwd;

  @DatabaseField
  private boolean gestureSkip = false;

  @DatabaseField
  private String gestureSkipStr;

  @DatabaseField
  private boolean isBindCard;

  @DatabaseField
  private String isCertified;

  @DatabaseField
  private boolean isWirelessUser;

  @DatabaseField
  private String loginTime;

  @DatabaseField
  private String loginToken;

  @DatabaseField
  private String logonId;

  @DatabaseField
  private String mobileNumber;

  @DatabaseField
  private boolean noPayPwd;

  @DatabaseField
  private String realNamed;

  @DatabaseField
  private String sessionId;

  @DatabaseField
  private String taobaoSid;

  @DatabaseField
  private String userAvatar;

  @DatabaseField(id=true)
  private String userId;

  @DatabaseField
  private String userName;

  public UserInfo()
  {
  }

  public UserInfo(Parcel paramParcel)
  {
    this.logonId = paramParcel.readString();
    this.userId = paramParcel.readString();
    this.userName = paramParcel.readString();
    this.userAvatar = paramParcel.readString();
    this.sessionId = paramParcel.readString();
    boolean[] arrayOfBoolean1 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean1);
    this.autoLogin = arrayOfBoolean1[0];
    this.gesturePwd = paramParcel.readString();
    boolean[] arrayOfBoolean2 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean2);
    this.gestureSkip = arrayOfBoolean2[0];
    this.loginTime = paramParcel.readString();
    boolean[] arrayOfBoolean3 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean3);
    this.noPayPwd = arrayOfBoolean3[0];
    this.mobileNumber = paramParcel.readString();
    this.isCertified = paramParcel.readString();
    this.taobaoSid = paramParcel.readString();
    this.extern_token = paramParcel.readString();
    this.loginToken = paramParcel.readString();
    boolean[] arrayOfBoolean4 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean4);
    this.isWirelessUser = arrayOfBoolean4[0];
    boolean[] arrayOfBoolean5 = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean5);
    this.isBindCard = arrayOfBoolean5[0];
    this.realNamed = paramParcel.readString();
    this.gestureErrorNum = paramParcel.readString();
    this.gestureSkipStr = paramParcel.readString();
  }

  public Object clone()
  {
    try
    {
      Object localObject = super.clone();
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getExtern_token()
  {
    return this.extern_token;
  }

  public String getGestureErrorNum()
  {
    return this.gestureErrorNum;
  }

  public String getGesturePwd()
  {
    return this.gesturePwd;
  }

  public String getGestureSkipStr()
  {
    return this.gestureSkipStr;
  }

  public String getIsCertified()
  {
    return this.isCertified;
  }

  public String getLoginTime()
  {
    return this.loginTime;
  }

  public String getLoginToken()
  {
    return this.loginToken;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getMobileNumber()
  {
    if (this.mobileNumber == null)
      return "";
    return this.mobileNumber;
  }

  public String getRealNamed()
  {
    return this.realNamed;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public String getTaobaoSid()
  {
    return this.taobaoSid;
  }

  public String getUserAvatar()
  {
    return this.userAvatar;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public boolean isAutoLogin()
  {
    return this.autoLogin;
  }

  public boolean isBindCard()
  {
    return this.isBindCard;
  }

  public boolean isGestureSkip()
  {
    return this.gestureSkip;
  }

  public boolean isNoPayPwd()
  {
    return this.noPayPwd;
  }

  public boolean isWirelessUser()
  {
    return this.isWirelessUser;
  }

  public void setAutoLogin(boolean paramBoolean)
  {
    this.autoLogin = paramBoolean;
  }

  public void setBindCard(boolean paramBoolean)
  {
    this.isBindCard = paramBoolean;
  }

  public void setExtern_token(String paramString)
  {
    this.extern_token = paramString;
  }

  public void setGestureErrorNum(String paramString)
  {
    this.gestureErrorNum = paramString;
  }

  public void setGesturePwd(String paramString)
  {
    this.gesturePwd = paramString;
  }

  public void setGestureSkip(boolean paramBoolean)
  {
    this.gestureSkip = paramBoolean;
  }

  public void setGestureSkipStr(String paramString)
  {
    this.gestureSkipStr = paramString;
  }

  public void setIsCertified(String paramString)
  {
    this.isCertified = paramString;
  }

  public void setLoginTime(String paramString)
  {
    this.loginTime = paramString;
  }

  public void setLoginToken(String paramString)
  {
    this.loginToken = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMobileNumber(String paramString)
  {
    this.mobileNumber = paramString;
  }

  public void setNoPayPwd(boolean paramBoolean)
  {
    this.noPayPwd = paramBoolean;
  }

  public void setRealNamed(String paramString)
  {
    this.realNamed = paramString;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }

  public void setTaobaoSid(String paramString)
  {
    this.taobaoSid = paramString;
  }

  public void setUserAvatar(String paramString)
  {
    this.userAvatar = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }

  public void setWirelessUser(boolean paramBoolean)
  {
    this.isWirelessUser = paramBoolean;
  }

  public String toString()
  {
    return this.logonId;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.logonId);
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.userName);
    paramParcel.writeString(this.userAvatar);
    paramParcel.writeString(this.sessionId);
    boolean[] arrayOfBoolean1 = new boolean[1];
    arrayOfBoolean1[0] = this.autoLogin;
    paramParcel.writeBooleanArray(arrayOfBoolean1);
    paramParcel.writeString(this.gesturePwd);
    boolean[] arrayOfBoolean2 = new boolean[1];
    arrayOfBoolean2[0] = this.gestureSkip;
    paramParcel.writeBooleanArray(arrayOfBoolean2);
    paramParcel.writeString(this.loginTime);
    boolean[] arrayOfBoolean3 = new boolean[1];
    arrayOfBoolean3[0] = this.noPayPwd;
    paramParcel.writeBooleanArray(arrayOfBoolean3);
    paramParcel.writeString(this.mobileNumber);
    paramParcel.writeString(this.isCertified);
    paramParcel.writeString(this.taobaoSid);
    paramParcel.writeString(this.extern_token);
    paramParcel.writeString(this.loginToken);
    boolean[] arrayOfBoolean4 = new boolean[1];
    arrayOfBoolean4[0] = this.isWirelessUser;
    paramParcel.writeBooleanArray(arrayOfBoolean4);
    boolean[] arrayOfBoolean5 = new boolean[1];
    arrayOfBoolean5[0] = this.isBindCard;
    paramParcel.writeBooleanArray(arrayOfBoolean5);
    paramParcel.writeString(this.realNamed);
    paramParcel.writeString(this.gestureErrorNum);
    paramParcel.writeString(this.gestureSkipStr);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.UserInfo
 * JD-Core Version:    0.6.2
 */