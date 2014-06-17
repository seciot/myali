package com.alipay.mobilesecurity.core.model.authcenter;

public class GetIndexReq extends TidApplyReq
{
  public String logonId;
  public String tid;

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getTid()
  {
    return this.tid;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.authcenter.GetIndexReq
 * JD-Core Version:    0.6.2
 */