package com.taobao.securityjni.intelface;

import com.taobao.securityjni.tools.DataContext;

public abstract interface ISecurityCheck
{
  public abstract String getCheckSignature(String paramString, DataContext paramDataContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.ISecurityCheck
 * JD-Core Version:    0.6.2
 */