package com.alipay.mobilesecurity.core.model.mainpage.level;

import com.alipay.mobilesecurity.core.model.Tid;

public class SecurityCheckReq
{
  public String logonId;
  public boolean openPush;
  public boolean setGesture;
  public Tid tid;

  public String getLogonId()
  {
    return this.logonId;
  }

  public Tid getTid()
  {
    return this.tid;
  }

  public boolean isOpenPush()
  {
    return this.openPush;
  }

  public boolean isSetGesture()
  {
    return this.setGesture;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setOpenPush(boolean paramBoolean)
  {
    this.openPush = paramBoolean;
  }

  public void setSetGesture(boolean paramBoolean)
  {
    this.setGesture = paramBoolean;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.level.SecurityCheckReq
 * JD-Core Version:    0.6.2
 */