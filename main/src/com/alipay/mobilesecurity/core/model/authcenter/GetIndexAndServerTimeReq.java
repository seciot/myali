package com.alipay.mobilesecurity.core.model.authcenter;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class GetIndexAndServerTimeReq extends ToString
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
 * Qualified Name:     com.alipay.mobilesecurity.core.model.authcenter.GetIndexAndServerTimeReq
 * JD-Core Version:    0.6.2
 */