package com.ut.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ut.c.g;

public class BQueryWhoHasOne extends BroadcastReceiver
{
  static void a(Context paramContext, String paramString, a parama)
  {
    if ((paramContext != null) && (parama != null) && (!g.D(paramString)))
      synchronized (b.S)
      {
        Intent localIntent = new Intent();
        localIntent.setPackage(paramString);
        localIntent.setAction("UT.FoundIT");
        try
        {
          String str1 = parama.f();
          String str2 = parama.g();
          String str3 = parama.getDeviceId();
          String str4 = parama.h();
          if ((!g.D(str1)) && (!g.D(str2)) && (!g.D(str3)) && (!g.D(str4)))
          {
            localIntent.putExtra("e", str1);
            localIntent.putExtra("s", str2);
            localIntent.putExtra("d", str3);
            localIntent.putExtra("u", str4);
            localIntent.putExtra("t", parama.e());
            localIntent.putExtra("S", parama.d());
            paramContext.sendOrderedBroadcast(localIntent, "com.ut.permission.DEVICE_STATE");
          }
          return;
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext != null) && (paramIntent.hasExtra("src")))
    {
      a locala = b.b(paramContext);
      if ((locala != null) && (locala.d() != 0L) && (locala.d() == b.a(locala)))
      {
        abortBroadcast();
        a(paramContext, paramIntent.getStringExtra("src"), locala);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.BQueryWhoHasOne
 * JD-Core Version:    0.6.2
 */