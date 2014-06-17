package com.amap.api.location;

import android.location.LocationListener;
import android.os.Bundle;

class d
  implements LocationListener
{
  d(c paramc)
  {
  }

  // ERROR //
  public void onLocationChanged(android.location.Location paramLocation)
  {
    // Byte code:
    //   0: iconst_1
    //   1: putstatic 25	com/amap/api/location/a:b	Z
    //   4: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   7: putstatic 35	com/amap/api/location/a:c	J
    //   10: aconst_null
    //   11: astore_2
    //   12: aload_0
    //   13: getfield 12	com/amap/api/location/d:a	Lcom/amap/api/location/c;
    //   16: invokestatic 40	com/amap/api/location/c:b	(Lcom/amap/api/location/c;)Lcom/amap/api/location/core/b;
    //   19: aload_0
    //   20: getfield 12	com/amap/api/location/d:a	Lcom/amap/api/location/c;
    //   23: invokestatic 43	com/amap/api/location/c:a	(Lcom/amap/api/location/c;)Ljava/lang/String;
    //   26: invokevirtual 48	com/amap/api/location/core/b:a	(Ljava/lang/String;)Z
    //   29: ifeq +92 -> 121
    //   32: aload_1
    //   33: invokevirtual 54	android/location/Location:getLongitude	()D
    //   36: aload_1
    //   37: invokevirtual 57	android/location/Location:getLatitude	()D
    //   40: invokestatic 62	com/aps/o:a	(DD)[D
    //   43: astore 12
    //   45: new 64	com/amap/api/location/AMapLocation
    //   48: dup
    //   49: aload_1
    //   50: invokespecial 66	com/amap/api/location/AMapLocation:<init>	(Landroid/location/Location;)V
    //   53: astore 7
    //   55: aload 7
    //   57: aload 12
    //   59: iconst_1
    //   60: daload
    //   61: invokevirtual 70	com/amap/api/location/AMapLocation:setLatitude	(D)V
    //   64: aload 7
    //   66: aload 12
    //   68: iconst_0
    //   69: daload
    //   70: invokevirtual 73	com/amap/api/location/AMapLocation:setLongitude	(D)V
    //   73: new 75	android/os/Message
    //   76: dup
    //   77: invokespecial 76	android/os/Message:<init>	()V
    //   80: astore 10
    //   82: aload 10
    //   84: aload 7
    //   86: putfield 80	android/os/Message:obj	Ljava/lang/Object;
    //   89: aload 10
    //   91: getstatic 83	com/amap/api/location/a:a	I
    //   94: putfield 86	android/os/Message:what	I
    //   97: aload_0
    //   98: getfield 12	com/amap/api/location/d:a	Lcom/amap/api/location/c;
    //   101: invokestatic 89	com/amap/api/location/c:c	(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;
    //   104: aload 10
    //   106: invokevirtual 95	com/amap/api/location/a$a:sendMessage	(Landroid/os/Message;)Z
    //   109: pop
    //   110: iconst_1
    //   111: putstatic 25	com/amap/api/location/a:b	Z
    //   114: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   117: putstatic 35	com/amap/api/location/a:c	J
    //   120: return
    //   121: new 64	com/amap/api/location/AMapLocation
    //   124: dup
    //   125: aload_1
    //   126: invokespecial 66	com/amap/api/location/AMapLocation:<init>	(Landroid/location/Location;)V
    //   129: astore 7
    //   131: goto -58 -> 73
    //   134: astore 6
    //   136: aconst_null
    //   137: astore 7
    //   139: new 75	android/os/Message
    //   142: dup
    //   143: invokespecial 76	android/os/Message:<init>	()V
    //   146: astore 8
    //   148: aload 8
    //   150: aload 7
    //   152: putfield 80	android/os/Message:obj	Ljava/lang/Object;
    //   155: aload 8
    //   157: getstatic 83	com/amap/api/location/a:a	I
    //   160: putfield 86	android/os/Message:what	I
    //   163: aload_0
    //   164: getfield 12	com/amap/api/location/d:a	Lcom/amap/api/location/c;
    //   167: invokestatic 89	com/amap/api/location/c:c	(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;
    //   170: aload 8
    //   172: invokevirtual 95	com/amap/api/location/a$a:sendMessage	(Landroid/os/Message;)Z
    //   175: pop
    //   176: iconst_1
    //   177: putstatic 25	com/amap/api/location/a:b	Z
    //   180: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   183: putstatic 35	com/amap/api/location/a:c	J
    //   186: return
    //   187: astore_3
    //   188: new 75	android/os/Message
    //   191: dup
    //   192: invokespecial 76	android/os/Message:<init>	()V
    //   195: astore 4
    //   197: aload 4
    //   199: aload_2
    //   200: putfield 80	android/os/Message:obj	Ljava/lang/Object;
    //   203: aload 4
    //   205: getstatic 83	com/amap/api/location/a:a	I
    //   208: putfield 86	android/os/Message:what	I
    //   211: aload_0
    //   212: getfield 12	com/amap/api/location/d:a	Lcom/amap/api/location/c;
    //   215: invokestatic 89	com/amap/api/location/c:c	(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;
    //   218: aload 4
    //   220: invokevirtual 95	com/amap/api/location/a$a:sendMessage	(Landroid/os/Message;)Z
    //   223: pop
    //   224: iconst_1
    //   225: putstatic 25	com/amap/api/location/a:b	Z
    //   228: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   231: putstatic 35	com/amap/api/location/a:c	J
    //   234: aload_3
    //   235: athrow
    //   236: astore 14
    //   238: aload 7
    //   240: astore_2
    //   241: aload 14
    //   243: astore_3
    //   244: goto -56 -> 188
    //   247: astore 13
    //   249: goto -110 -> 139
    //
    // Exception table:
    //   from	to	target	type
    //   12	55	134	java/lang/Exception
    //   121	131	134	java/lang/Exception
    //   12	55	187	finally
    //   121	131	187	finally
    //   55	73	236	finally
    //   55	73	247	java/lang/Exception
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.d
 * JD-Core Version:    0.6.2
 */