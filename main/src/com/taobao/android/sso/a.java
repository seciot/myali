package com.taobao.android.sso;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class a
  implements ServiceConnection
{
  private IBinder a;
  private int b = 0;

  // ERROR //
  public final IBinder a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/taobao/android/sso/a:a	Landroid/os/IBinder;
    //   6: ifnull +14 -> 20
    //   9: aload_0
    //   10: getfield 21	com/taobao/android/sso/a:a	Landroid/os/IBinder;
    //   13: astore 4
    //   15: aload_0
    //   16: monitorexit
    //   17: aload 4
    //   19: areturn
    //   20: aload_0
    //   21: iconst_1
    //   22: aload_0
    //   23: getfield 16	com/taobao/android/sso/a:b	I
    //   26: iadd
    //   27: putfield 16	com/taobao/android/sso/a:b	I
    //   30: aload_0
    //   31: ldc2_w 22
    //   34: invokevirtual 27	java/lang/Object:wait	(J)V
    //   37: aload_0
    //   38: iconst_m1
    //   39: aload_0
    //   40: getfield 16	com/taobao/android/sso/a:b	I
    //   43: iadd
    //   44: putfield 16	com/taobao/android/sso/a:b	I
    //   47: aload_0
    //   48: getfield 21	com/taobao/android/sso/a:a	Landroid/os/IBinder;
    //   51: astore 4
    //   53: goto -38 -> 15
    //   56: astore_3
    //   57: aload_3
    //   58: invokevirtual 30	java/lang/InterruptedException:printStackTrace	()V
    //   61: aload_0
    //   62: iconst_m1
    //   63: aload_0
    //   64: getfield 16	com/taobao/android/sso/a:b	I
    //   67: iadd
    //   68: putfield 16	com/taobao/android/sso/a:b	I
    //   71: goto -24 -> 47
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    //   79: astore_2
    //   80: aload_0
    //   81: iconst_m1
    //   82: aload_0
    //   83: getfield 16	com/taobao/android/sso/a:b	I
    //   86: iadd
    //   87: putfield 16	com/taobao/android/sso/a:b	I
    //   90: aload_2
    //   91: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   20	37	56	java/lang/InterruptedException
    //   2	15	74	finally
    //   37	47	74	finally
    //   47	53	74	finally
    //   61	71	74	finally
    //   80	92	74	finally
    //   20	37	79	finally
    //   57	61	79	finally
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.a = paramIBinder;
      if (this.b > 0)
        notifyAll();
      return;
    }
    finally
    {
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.a
 * JD-Core Version:    0.6.2
 */