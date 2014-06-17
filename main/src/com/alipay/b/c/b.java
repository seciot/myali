package com.alipay.b.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.io.PrintStream;

public final class b extends BroadcastReceiver
{
  protected b(a parama)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.hasExtra("state"))
    {
      if (paramIntent.getIntExtra("state", 0) == 0)
      {
        this.a.a = false;
        System.out.println("检测耳机被拔出");
      }
    }
    else
      return;
    this.a.a = true;
    System.out.println("检测耳机被插入");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.c.b
 * JD-Core Version:    0.6.2
 */