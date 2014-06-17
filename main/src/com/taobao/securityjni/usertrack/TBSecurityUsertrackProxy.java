package com.taobao.securityjni.usertrack;

import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;

public class TBSecurityUsertrackProxy
{
  private static AtomicBoolean a = new AtomicBoolean(false);
  private static Object b = new Object();
  private static boolean c = false;
  private static Object d = null;
  private static Method e = null;

  // ERROR //
  public static void UserTrackUpload(java.lang.String paramString1, java.lang.String paramString2, java.lang.String paramString3, java.lang.String paramString4)
  {
    // Byte code:
    //   0: iconst_5
    //   1: anewarray 4	java/lang/Object
    //   4: astore 4
    //   6: aload 4
    //   8: iconst_0
    //   9: aload_0
    //   10: aastore
    //   11: aload 4
    //   13: iconst_1
    //   14: sipush 24401
    //   17: invokestatic 43	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   20: aastore
    //   21: aload 4
    //   23: iconst_2
    //   24: aload_1
    //   25: aastore
    //   26: aload 4
    //   28: iconst_3
    //   29: aload_2
    //   30: aastore
    //   31: aload 4
    //   33: iconst_4
    //   34: aload_3
    //   35: aastore
    //   36: getstatic 29	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:c	Z
    //   39: ifne +133 -> 172
    //   42: aconst_null
    //   43: astore 9
    //   45: iconst_5
    //   46: anewarray 45	java/lang/Class
    //   49: astore 10
    //   51: aload 10
    //   53: iconst_0
    //   54: ldc 47
    //   56: aastore
    //   57: aload 10
    //   59: iconst_1
    //   60: getstatic 51	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   63: aastore
    //   64: aload 10
    //   66: iconst_2
    //   67: ldc 4
    //   69: aastore
    //   70: aload 10
    //   72: iconst_3
    //   73: ldc 4
    //   75: aastore
    //   76: aload 10
    //   78: iconst_4
    //   79: ldc 4
    //   81: aastore
    //   82: getstatic 31	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:d	Ljava/lang/Object;
    //   85: ifnull +9 -> 94
    //   88: getstatic 33	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:e	Ljava/lang/reflect/Method;
    //   91: ifnonnull +81 -> 172
    //   94: ldc 53
    //   96: invokestatic 57	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   99: astore 16
    //   101: aconst_null
    //   102: astore 13
    //   104: aconst_null
    //   105: astore 9
    //   107: aload 16
    //   109: ifnull +25 -> 134
    //   112: aload 16
    //   114: ldc 59
    //   116: aload 10
    //   118: invokevirtual 63	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   121: astore 9
    //   123: aload 16
    //   125: invokevirtual 67	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   128: astore 17
    //   130: aload 17
    //   132: astore 13
    //   134: getstatic 29	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:c	Z
    //   137: iconst_1
    //   138: if_icmpeq +34 -> 172
    //   141: getstatic 27	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:b	Ljava/lang/Object;
    //   144: astore 14
    //   146: aload 14
    //   148: monitorenter
    //   149: getstatic 29	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:c	Z
    //   152: ifne +17 -> 169
    //   155: aload 13
    //   157: putstatic 31	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:d	Ljava/lang/Object;
    //   160: aload 9
    //   162: putstatic 33	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:e	Ljava/lang/reflect/Method;
    //   165: iconst_1
    //   166: putstatic 29	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:c	Z
    //   169: aload 14
    //   171: monitorexit
    //   172: getstatic 31	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:d	Ljava/lang/Object;
    //   175: astore 5
    //   177: getstatic 33	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:e	Ljava/lang/reflect/Method;
    //   180: astore 6
    //   182: aload 5
    //   184: ifnull +18 -> 202
    //   187: aload 6
    //   189: ifnull +13 -> 202
    //   192: aload 6
    //   194: aload 5
    //   196: aload 4
    //   198: invokevirtual 73	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   201: pop
    //   202: return
    //   203: astore 11
    //   205: getstatic 23	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:a	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   208: invokevirtual 77	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   211: istore 12
    //   213: aconst_null
    //   214: astore 13
    //   216: iload 12
    //   218: ifeq -84 -> 134
    //   221: aload 11
    //   223: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   226: aconst_null
    //   227: astore 13
    //   229: goto -95 -> 134
    //   232: astore 15
    //   234: aload 14
    //   236: monitorexit
    //   237: aload 15
    //   239: athrow
    //   240: astore 7
    //   242: getstatic 23	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:a	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   245: invokevirtual 77	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   248: ifeq -46 -> 202
    //   251: aload 7
    //   253: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   256: return
    //
    // Exception table:
    //   from	to	target	type
    //   94	101	203	java/lang/Exception
    //   112	130	203	java/lang/Exception
    //   149	169	232	finally
    //   169	172	232	finally
    //   192	202	240	java/lang/Exception
  }

  public static void setEnableOutPutExpInfo(boolean paramBoolean)
  {
    try
    {
      a.getAndSet(paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.usertrack.TBSecurityUsertrackProxy
 * JD-Core Version:    0.6.2
 */