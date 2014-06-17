package com.taobao.securityjni.impl;

import com.taobao.security.ProtocalEntry;
import com.taobao.securityjni.errorcode.SENotSupportedMethodError;
import com.taobao.securityjni.intelface.ISecurityBody;
import com.taobao.securityjni.tools.DataContext;

public class JImplSecurityBody
  implements ISecurityBody
{
  public byte[] getSecBodyData(byte[] paramArrayOfByte, String paramString, ProtocalEntry paramProtocalEntry, DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.JImplSecurityBody
 * JD-Core Version:    0.6.2
 */