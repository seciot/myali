package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.ISESecurity;

public class SESecurity
  implements IAttachImpl, ISESecurity
{
  private ISESecurity seImpl = null;

  public SESecurity()
  {
    this.seImpl = new SESecurityImpl();
  }

  public SESecurity(ISESecurity paramISESecurity)
  {
    this.seImpl = paramISESecurity;
  }

  public void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof ISESecurity)))
      this.seImpl = ((ISESecurity)paramObject);
  }

  public boolean SOCredibleCheck(ContextWrapper paramContextWrapper)
  {
    return this.seImpl.SOCredibleCheck(paramContextWrapper);
  }

  public void SOInitCheck()
  {
    this.seImpl.SOInitCheck();
  }

  public boolean SOValidateSha256(String paramString)
  {
    return this.seImpl.SOValidateSha256(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.SESecurity
 * JD-Core Version:    0.6.2
 */