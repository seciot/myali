package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.intelface.ISecurityCheck;
import com.taobao.securityjni.tools.DataContext;
import com.taobao.securityjni.usertrack.a;

public class CImplSecurityCheck extends SESecurity
  implements ISecurityCheck
{
  private ContextWrapper context = null;

  public CImplSecurityCheck(ContextWrapper paramContextWrapper)
  {
    this.context = paramContextWrapper;
  }

  private void InitGlobalData()
  {
    new GlobalInit().InitData(this.context);
  }

  private native String getCheckSignatureNative(String paramString, DataContext paramDataContext);

  public String getCheckSignature(String paramString, DataContext paramDataContext)
  {
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        String str = getCheckSignatureNative(paramString, paramDataContext);
        return str;
      }
      catch (Throwable localThrowable)
      {
        a.a("getCheckSignature", localThrowable);
      }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.CImplSecurityCheck
 * JD-Core Version:    0.6.2
 */