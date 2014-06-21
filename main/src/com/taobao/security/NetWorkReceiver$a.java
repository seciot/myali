package com.taobao.security;

import android.content.Context;
import android.content.ContextWrapper;
import com.taobao.securityjni.connector.b;

final class NetWorkReceiver$a
  implements Runnable
{
  private Context b;

  public NetWorkReceiver$a(NetWorkReceiver paramNetWorkReceiver, Context paramContext)
  {
    this.b = paramContext;
  }

  public final void run()
  {
    b localb = ProtocolManager.a((ContextWrapper)this.b);
    if ((localb != null) && (localb.a == 0) && (localb.d != null));
    synchronized (NetWorkReceiver.a())
    {
      NetWorkReceiver.stop();
      ProtocolManager.v(localb, (ContextWrapper)this.b);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.NetWorkReceiver.a
 * JD-Core Version:    0.6.2
 */