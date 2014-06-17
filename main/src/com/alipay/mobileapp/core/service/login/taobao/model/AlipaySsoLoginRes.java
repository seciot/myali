package com.alipay.mobileapp.core.service.login.taobao.model;

import java.util.ArrayList;
import java.util.List;

public class AlipaySsoLoginRes
{
  public String autoLoginToken;
  public String ecode;
  public List<String> loginCookie = new ArrayList();
  public long loginTime;
  public String memo;
  public String nick;
  public int resultStatus;
  public String sid;
  public boolean success;
  public String topSession;
  public long userId;

  public String getAutoLoginToken()
  {
    return this.autoLoginToken;
  }

  public String getEcode()
  {
    return this.ecode;
  }

  public List<String> getLoginCookie()
  {
    return this.loginCookie;
  }

  public long getLoginTime()
  {
    return this.loginTime;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getNick()
  {
    return this.nick;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public String getSid()
  {
    return this.sid;
  }

  public String getTopSession()
  {
    return this.topSession;
  }

  public long getUserId()
  {
    return this.userId;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setAutoLoginToken(String paramString)
  {
    this.autoLoginToken = paramString;
  }

  public void setEcode(String paramString)
  {
    this.ecode = paramString;
  }

  public void setLoginCookie(List<String> paramList)
  {
    this.loginCookie = paramList;
  }

  public void setLoginTime(long paramLong)
  {
    this.loginTime = paramLong;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setNick(String paramString)
  {
    this.nick = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }

  public void setSid(String paramString)
  {
    this.sid = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }

  public void setTopSession(String paramString)
  {
    this.topSession = paramString;
  }

  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.core.service.login.taobao.model.AlipaySsoLoginRes
 * JD-Core Version:    0.6.2
 */