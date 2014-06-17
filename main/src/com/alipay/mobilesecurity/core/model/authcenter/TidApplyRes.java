package com.alipay.mobilesecurity.core.model.authcenter;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;

public class TidApplyRes extends MobileSecurityResult
{
  public Tid tid;

  public Tid getTid()
  {
    return this.tid;
  }

  public void setTid(Tid paramTid)
  {
    this.tid = paramTid;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.authcenter.TidApplyRes
 * JD-Core Version:    0.6.2
 */