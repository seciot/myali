package com.alipay.pushsdk.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.pushsdk.c.a.c;
import java.util.concurrent.ConcurrentHashMap;

public class d
{
  private static final String a = c.getBundle(d.class);
  private static d b = null;
  private Context c;
  private ConcurrentHashMap d;
  private Object e = new Object();

  private d(Context paramContext)
  {
    this.c = paramContext;
    this.d = new ConcurrentHashMap();
  }

  public static d a(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new d(paramContext);
      d locald = b;
      return locald;
    }
    finally
    {
    }
  }

  // ERROR //
  public final String a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 38	com/alipay/pushsdk/c/d:d	Ljava/util/concurrent/ConcurrentHashMap;
    //   4: aload_1
    //   5: invokevirtual 48	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   8: checkcast 50	java/lang/String
    //   11: astore_2
    //   12: aload_2
    //   13: ifnull +14 -> 27
    //   16: ldc 52
    //   18: aload_2
    //   19: invokevirtual 56	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   22: ifne +5 -> 27
    //   25: aload_2
    //   26: areturn
    //   27: getstatic 62	android/os/Build$VERSION:SDK_INT	I
    //   30: pop
    //   31: aload_0
    //   32: getfield 33	com/alipay/pushsdk/c/d:c	Landroid/content/Context;
    //   35: ldc 64
    //   37: iconst_0
    //   38: invokevirtual 70	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   41: astore 5
    //   43: aload_0
    //   44: getfield 31	com/alipay/pushsdk/c/d:e	Ljava/lang/Object;
    //   47: astore 6
    //   49: aload 6
    //   51: monitorenter
    //   52: aload 5
    //   54: aload_1
    //   55: aconst_null
    //   56: invokeinterface 76 3 0
    //   61: astore_2
    //   62: iconst_5
    //   63: getstatic 23	com/alipay/pushsdk/c/d:a	Ljava/lang/String;
    //   66: new 78	java/lang/StringBuilder
    //   69: dup
    //   70: ldc 80
    //   72: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_1
    //   76: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: ldc 89
    //   81: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_2
    //   85: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokestatic 96	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   94: aload 6
    //   96: monitorexit
    //   97: aload_2
    //   98: ifnull -73 -> 25
    //   101: aload_0
    //   102: getfield 38	com/alipay/pushsdk/c/d:d	Ljava/util/concurrent/ConcurrentHashMap;
    //   105: aload_1
    //   106: aload_2
    //   107: invokevirtual 100	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   110: pop
    //   111: iconst_5
    //   112: getstatic 23	com/alipay/pushsdk/c/d:a	Ljava/lang/String;
    //   115: new 78	java/lang/StringBuilder
    //   118: dup
    //   119: ldc 102
    //   121: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   124: aload_1
    //   125: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc 89
    //   130: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_2
    //   134: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 96	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   143: aload_2
    //   144: areturn
    //   145: astore_3
    //   146: aload_3
    //   147: invokevirtual 105	java/lang/Exception:printStackTrace	()V
    //   150: aconst_null
    //   151: areturn
    //   152: astore 7
    //   154: aload 6
    //   156: monitorexit
    //   157: aload 7
    //   159: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   27	52	145	java/lang/Exception
    //   101	143	145	java/lang/Exception
    //   154	160	145	java/lang/Exception
    //   52	97	152	finally
  }

  public final boolean a(String paramString1, String paramString2)
  {
    try
    {
      this.d.put(paramString1, paramString2);
      c.e(5, a, "putString() cacheDataMap key=" + paramString1 + ", val=" + paramString2);
      SharedPreferences localSharedPreferences = this.c.getSharedPreferences("push_pref", 0);
      synchronized (this.e)
      {
        localSharedPreferences.edit().putString(paramString1, paramString2).commit();
        c.e(5, a, "putString() sharePrefs key=" + paramString1 + ", val=" + paramString2);
        return true;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.d
 * JD-Core Version:    0.6.2
 */