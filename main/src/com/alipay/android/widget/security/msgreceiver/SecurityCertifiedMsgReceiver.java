package com.alipay.android.widget.security.msgreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class SecurityCertifiedMsgReceiver extends BroadcastReceiver
{
  private a a;

  public final void a(a parama)
  {
    this.a = parama;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.a != null)
      this.a.a(paramIntent);
  }

  public static abstract interface a
  {
    public abstract void a(Intent paramIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver
 * JD-Core Version:    0.6.2
 */