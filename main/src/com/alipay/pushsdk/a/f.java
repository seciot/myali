package com.alipay.pushsdk.a;

import android.os.Handler;
import android.os.Message;
import com.alipay.pushsdk.b.b;

public final class f extends Handler
{
  public f(e parame)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    BundlesManager localb = (BundlesManager)paramMessage.obj;
    switch (localb.d())
    {
    default:
      return;
    case 3:
      e.a(this.a).a(localb);
      return;
    case 4:
    }
    e.a(this.a).a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.f
 * JD-Core Version:    0.6.2
 */