package com.taobao.securityjni;

import com.taobao.securityjni.errorcode.SESoNotInitedError;

public final class a
{
  public static int a = 0;

  public static void a()
  {
    if (a == 0)
      throw new SESoNotInitedError("So Not Inited: you must call initialize function before all security interface");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.a
 * JD-Core Version:    0.6.2
 */