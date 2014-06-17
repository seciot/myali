package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import com.taobao.securityjni.a;
import com.taobao.securityjni.intelface.ISESecurity;
import com.taobao.securityjni.tools.e;

public class SESecurityImpl
  implements ISESecurity
{
  public boolean SOCredibleCheck(ContextWrapper paramContextWrapper)
  {
    return e.a(paramContextWrapper);
  }

  public void SOInitCheck()
  {
    a.a();
  }

  public boolean SOValidateSha256(String paramString)
  {
    return e.a(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.SESecurityImpl
 * JD-Core Version:    0.6.2
 */