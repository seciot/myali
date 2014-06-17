package com.ut.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ut.c.g;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

public class BFoundIt extends BroadcastReceiver
{
  private static List<CountDownLatch> t = new Vector();
  private static volatile a u = null;
  private static Object v = new Object();

  public static void a(CountDownLatch paramCountDownLatch)
  {
    if (paramCountDownLatch != null);
    try
    {
      t.add(paramCountDownLatch);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static a c()
  {
    synchronized (v)
    {
      a locala = u;
      return locala;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a locala;
    if ((paramContext != null) && (paramIntent != null))
    {
      try
      {
        String str1 = paramIntent.getStringExtra("e");
        String str2 = paramIntent.getStringExtra("s");
        String str3 = paramIntent.getStringExtra("d");
        String str4 = paramIntent.getStringExtra("u");
        long l1 = paramIntent.getLongExtra("S", 0L);
        if ((g.D(str1)) || (g.D(str2)) || (g.D(str3)) || (g.D(str4)))
          break label254;
        synchronized (v)
        {
          locala = new a();
          locala.a(str1);
          locala.b(str2);
          locala.e(str3);
          locala.r(str4);
          locala.a(l1);
          long l2 = paramIntent.getLongExtra("t", 0L);
          if (l2 > 0L)
            locala.b(l2);
          long l3 = b.a(locala);
          u = locala;
          if (l3 != l1)
            break label251;
          if (t.size() <= 0)
            break label257;
          u = locala;
          Iterator localIterator = t.iterator();
          if (localIterator.hasNext())
            ((CountDownLatch)localIterator.next()).countDown();
        }
      }
      finally
      {
      }
      t.clear();
    }
    while (true)
    {
      label251: label254: return;
      label257: b.a(locala, paramContext);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.BFoundIt
 * JD-Core Version:    0.6.2
 */