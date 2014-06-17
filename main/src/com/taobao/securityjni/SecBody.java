package com.taobao.securityjni;

import android.content.ContextWrapper;
import com.taobao.security.ProtocalEntry;
import com.taobao.securityjni.impl.CImplSecurityBody;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.ISecurityBody;
import com.taobao.securityjni.tools.DataContext;
import com.ut.secbody.SecurityMatrix;

public class SecBody
  implements IAttachImpl, ISecurityBody
{
  private ISecurityBody a = null;

  public SecBody(ContextWrapper paramContextWrapper)
  {
    this.a = new CImplSecurityBody(paramContextWrapper);
  }

  public SecBody(ContextWrapper paramContextWrapper, ISecurityBody paramISecurityBody)
  {
    if (paramISecurityBody == null)
    {
      this.a = new CImplSecurityBody(paramContextWrapper);
      return;
    }
    this.a = paramISecurityBody;
  }

  public void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof ISecurityBody)))
      this.a = ((ISecurityBody)paramObject);
  }

  public String getSecBodyData(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      return null;
    return getSecBodyData(paramString, new DataContext(0, null));
  }

  public String getSecBodyData(String paramString, DataContext paramDataContext)
  {
    if ((paramString == null) || ("".equals(paramString)));
    byte[] arrayOfByte;
    do
    {
      return null;
      ProtocalEntry localProtocalEntry = SecurityMatrix.getMatrixEntry();
      arrayOfByte = getSecBodyData(SecurityMatrix.getMatrixData(), paramString, localProtocalEntry, paramDataContext);
    }
    while (arrayOfByte == null);
    String str = new String(arrayOfByte);
    return "a" + str;
  }

  public byte[] getSecBodyData(byte[] paramArrayOfByte, String paramString, ProtocalEntry paramProtocalEntry, DataContext paramDataContext)
  {
    return this.a.getSecBodyData(paramArrayOfByte, paramString, paramProtocalEntry, paramDataContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.SecBody
 * JD-Core Version:    0.6.2
 */