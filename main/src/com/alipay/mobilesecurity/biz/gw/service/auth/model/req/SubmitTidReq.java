package com.alipay.mobilesecurity.biz.gw.service.auth.model.req;

import com.alipay.mobilesecurity.common.service.model.ToString;
import com.alipay.mobilesecurity.core.model.Tid;

public class SubmitTidReq extends ToString
{
  public String authId;
  public Tid tid;

  public String getAuthId()
  {
    return this.authId;
  }

  public Tid getTid()
  {
    return this.tid;
  }

  public void setAuthId(String paramString)
  {
    this.authId = paramString;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.model.req.SubmitTidReq
 * JD-Core Version:    0.6.2
 */