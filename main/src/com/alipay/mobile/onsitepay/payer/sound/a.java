package com.alipay.mobile.onsitepay.payer.sound;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;

public final class a
{
  public static String a = "FacePayGuideShareStore";
  private static HashMap<String, String> b = new HashMap();

  private static String a()
  {
    return "8.1";
  }

  public static String a(Context paramContext, String paramString)
  {
    try
    {
      String str2 = paramString + "_" + a();
      str1 = (String)b.get(str2);
      if (str1 != null)
      {
        boolean bool = "".equals(str1);
        if (bool);
      }
      while (true)
      {
        return str1;
        str1 = paramContext.getSharedPreferences("facePayGuideSharedDataStore", 0).getString(str2, null);
        b.put(str2, str1);
      }
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = null;
    }
    finally
    {
    }
  }

  // ERROR //
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 30	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   10: aload_1
    //   11: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc 37
    //   16: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: invokestatic 39	com/alipay/mobile/onsitepay/payer/sound/a:a	()Ljava/lang/String;
    //   22: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: astore 6
    //   30: aload_0
    //   31: ldc 56
    //   33: iconst_0
    //   34: invokevirtual 62	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   37: invokeinterface 77 1 0
    //   42: aload 6
    //   44: aload_2
    //   45: invokeinterface 83 3 0
    //   50: invokeinterface 87 1 0
    //   55: pop
    //   56: getstatic 22	com/alipay/mobile/onsitepay/payer/sound/a:b	Ljava/util/HashMap;
    //   59: aload 6
    //   61: aload_2
    //   62: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   65: pop
    //   66: iconst_1
    //   67: istore 4
    //   69: ldc 2
    //   71: monitorexit
    //   72: iload 4
    //   74: ireturn
    //   75: astore 5
    //   77: ldc 2
    //   79: monitorexit
    //   80: aload 5
    //   82: athrow
    //   83: astore_3
    //   84: iconst_0
    //   85: istore 4
    //   87: goto -18 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   3	66	75	finally
    //   3	66	83	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.a
 * JD-Core Version:    0.6.2
 */