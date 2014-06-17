package com.taobao.securityjni.impl;

import android.content.Context;
import android.content.ContextWrapper;
import com.taobao.security.ProtocalEntry;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.intelface.ISecurityBody;
import com.taobao.securityjni.tools.DataContext;
import com.taobao.securityjni.usertrack.a;

public class CImplSecurityBody extends SESecurity
  implements ISecurityBody
{
  private ContextWrapper context = null;

  public CImplSecurityBody(ContextWrapper paramContextWrapper)
  {
    this.context = paramContextWrapper;
  }

  private void InitGlobalData()
  {
    new GlobalInit().InitData(this.context);
  }

  private native byte[] getSecBodyDataNative(byte[] paramArrayOfByte, String paramString, ProtocalEntry paramProtocalEntry, DataContext paramDataContext, Context paramContext);

  public byte[] getSecBodyData(byte[] paramArrayOfByte, String paramString, ProtocalEntry paramProtocalEntry, DataContext paramDataContext)
  {
    if ((paramArrayOfByte == null) || (paramProtocalEntry == null) || (this.context == null))
      return null;
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = getSecBodyDataNative(paramArrayOfByte, paramString, paramProtocalEntry, paramDataContext, this.context);
        return arrayOfByte;
      }
      catch (Throwable localThrowable)
      {
        a.a("getSecBodyData", localThrowable);
      }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.CImplSecurityBody
 * JD-Core Version:    0.6.2
 */