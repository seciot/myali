package com.taobao.securityjni;

import android.content.ContextWrapper;
import com.taobao.securityjni.impl.CImplSecurityCheck;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.ISecurityCheck;
import com.taobao.securityjni.tools.DataContext;

public class SecurityCheck
  implements IAttachImpl, ISecurityCheck
{
  private ISecurityCheck a = null;

  public SecurityCheck(ContextWrapper paramContextWrapper)
  {
    this.a = new CImplSecurityCheck(paramContextWrapper);
  }

  public SecurityCheck(ContextWrapper paramContextWrapper, ISecurityCheck paramISecurityCheck)
  {
    if (paramISecurityCheck == null)
    {
      this.a = new CImplSecurityCheck(paramContextWrapper);
      return;
    }
    this.a = paramISecurityCheck;
  }

  public void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof ISecurityCheck)))
      this.a = ((ISecurityCheck)paramObject);
  }

  public String getCheckSignature(String paramString)
  {
    return getCheckSignature(paramString, new DataContext(0, null));
  }

  public String getCheckSignature(String paramString, DataContext paramDataContext)
  {
    return this.a.getCheckSignature(paramString, paramDataContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.SecurityCheck
 * JD-Core Version:    0.6.2
 */