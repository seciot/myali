package com.taobao.securityjni.impl;

import com.taobao.securityjni.errorcode.SENotSupportedMethodError;
import com.taobao.securityjni.intelface.ISecurityCheck;
import com.taobao.securityjni.tools.DataContext;

public class JImplSecurityCheck
  implements ISecurityCheck
{
  public String getCheckSignature(String paramString, DataContext paramDataContext)
  {
    throw new SENotSupportedMethodError();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.JImplSecurityCheck
 * JD-Core Version:    0.6.2
 */