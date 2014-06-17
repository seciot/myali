package com.taobao.securityjni.intelface;

import com.taobao.security.ProtocalEntry;
import com.taobao.securityjni.tools.DataContext;

public abstract interface ISecurityBody
{
  public abstract byte[] getSecBodyData(byte[] paramArrayOfByte, String paramString, ProtocalEntry paramProtocalEntry, DataContext paramDataContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.ISecurityBody
 * JD-Core Version:    0.6.2
 */