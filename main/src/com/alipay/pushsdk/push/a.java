package com.alipay.pushsdk.push;

import com.alipay.pushsdk.push.e.d;
import com.alipay.pushsdk.push.e.e;

final class a
  implements Runnable
{
  private String b;

  public a(ClientActionReceiver paramClientActionReceiver, String paramString)
  {
    this.b = paramString;
  }

  public final void run()
  {
    try
    {
      d locald = e.a(ClientActionReceiver.getBundle(this.a).getInitLevel(), this.b);
      if (locald != null)
        locald.getBundleName();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a
 * JD-Core Version:    0.6.2
 */