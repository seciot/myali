package com.alipay.pushsdk.data;

import android.content.Context;
import com.alipay.pushsdk.c.h;
import java.io.File;
import java.io.FileOutputStream;

public class f extends c
{
  private static final String a = com.alipay.pushsdk.c.a.c.getBundle(f.class);
  private static String b = "pub_msg_list";

  public f(Context paramContext)
  {
    super(paramContext);
  }

  private String[] b(String paramString)
  {
    int i = 0;
    Object localObject1 = c();
    if ((localObject1 != null) && (localObject1.length > 0))
    {
      if (localObject1.length >= 10)
      {
        localObject1[0] = paramString;
        com.alipay.pushsdk.c.a.c.e(3, a, "updatePubMsgList() pubMsgId=" + paramString + ", newPubList:" + localObject1.toString());
        return localObject1;
      }
      if (localObject1 != null)
        break label152;
    }
    label152: for (Object localObject2 = new String[0]; ; localObject2 = localObject1)
    {
      if (paramString == null);
      for (int j = 0; ; j = 1)
      {
        int k = localObject2.length;
        String[] arrayOfString = new String[k + j];
        while (i < k)
        {
          arrayOfString[i] = localObject2[i];
          i++;
        }
        if (j == 1)
          arrayOfString[k] = paramString;
        localObject1 = arrayOfString;
        break;
        localObject1 = new String[] { paramString };
        break;
      }
    }
  }

  // ERROR //
  private String[] c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 58	java/io/File
    //   5: dup
    //   6: new 31	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 60	java/lang/StringBuilder:<init>	()V
    //   13: aload_0
    //   14: invokevirtual 62	com/alipay/pushsdk/data/f:b	()Ljava/lang/String;
    //   17: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: getstatic 20	com/alipay/pushsdk/data/f:b	Ljava/lang/String;
    //   23: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokespecial 63	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: astore_2
    //   33: aload_2
    //   34: invokevirtual 67	java/io/File:exists	()Z
    //   37: ifeq +120 -> 157
    //   40: aload_2
    //   41: invokevirtual 71	java/io/File:length	()J
    //   44: lconst_0
    //   45: lcmp
    //   46: ifle +111 -> 157
    //   49: new 73	java/io/FileInputStream
    //   52: dup
    //   53: aload_2
    //   54: invokespecial 76	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   57: astore_3
    //   58: aload_3
    //   59: invokevirtual 80	java/io/FileInputStream:available	()I
    //   62: newarray byte
    //   64: astore 5
    //   66: aload_3
    //   67: aload 5
    //   69: invokevirtual 84	java/io/FileInputStream:read	([B)I
    //   72: pop
    //   73: new 54	java/lang/String
    //   76: dup
    //   77: aload 5
    //   79: ldc 86
    //   81: invokespecial 89	java/lang/String:<init>	([BLjava/lang/String;)V
    //   84: astore 7
    //   86: iconst_4
    //   87: getstatic 16	com/alipay/pushsdk/data/f:a	Ljava/lang/String;
    //   90: new 31	java/lang/StringBuilder
    //   93: dup
    //   94: ldc 91
    //   96: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   99: aload 7
    //   101: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokestatic 52	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   110: aload 7
    //   112: invokevirtual 94	java/lang/String:trim	()Ljava/lang/String;
    //   115: invokevirtual 96	java/lang/String:length	()I
    //   118: istore 8
    //   120: aconst_null
    //   121: astore_1
    //   122: iload 8
    //   124: ifle +18 -> 142
    //   127: aload 7
    //   129: invokestatic 100	com/alipay/pushsdk/c/h:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   132: astore 9
    //   134: aload 9
    //   136: invokestatic 106	java/util/Arrays:sort	([Ljava/lang/Object;)V
    //   139: aload 9
    //   141: astore_1
    //   142: aload_3
    //   143: invokevirtual 109	java/io/FileInputStream:close	()V
    //   146: aload_1
    //   147: areturn
    //   148: astore 4
    //   150: aload 4
    //   152: invokevirtual 112	java/lang/Exception:printStackTrace	()V
    //   155: aload_1
    //   156: areturn
    //   157: iconst_3
    //   158: getstatic 16	com/alipay/pushsdk/data/f:a	Ljava/lang/String;
    //   161: ldc 114
    //   163: invokestatic 52	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   166: aconst_null
    //   167: areturn
    //   168: astore 10
    //   170: aload 9
    //   172: astore_1
    //   173: aload 10
    //   175: astore 4
    //   177: goto -27 -> 150
    //
    // Exception table:
    //   from	to	target	type
    //   49	120	148	java/lang/Exception
    //   127	134	148	java/lang/Exception
    //   142	146	148	java/lang/Exception
    //   134	139	168	java/lang/Exception
  }

  public final String a()
  {
    String str = "";
    String[] arrayOfString = c();
    if ((arrayOfString != null) && (arrayOfString.length > 0))
      str = arrayOfString[(-1 + arrayOfString.length)];
    return str;
  }

  public final void a(String paramString)
  {
  }

  public final boolean a(NotifierInfo paramNotifierInfo)
  {
    b localb = paramNotifierInfo.g();
    com.alipay.pushsdk.c.a.c.e(3, a, "isContainMsg() newPubMsgId=" + localb.b());
    String[] arrayOfString = c();
    boolean bool = false;
    if (arrayOfString != null)
      bool = h.a(arrayOfString, localb.b());
    return bool;
  }

  public final void b(NotifierInfo paramNotifierInfo)
  {
    String str1 = paramNotifierInfo.g().b();
    com.alipay.pushsdk.c.a.c.e(3, a, "savePubMsgRecord() pubMsgId=" + str1);
    if ((str1 != null) && (str1.length() > 0))
    {
      String str2 = h.a(b(str1));
      com.alipay.pushsdk.c.a.c.e(4, a, "savePubMsgRecord() listMsgId:" + str2);
      try
      {
        File localFile = new File(b() + b);
        if (!localFile.exists())
          localFile.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localFileOutputStream.write(str2.toString().getBytes());
        localFileOutputStream.close();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        com.alipay.pushsdk.c.a.c.e(3, a, "savePubMsgRecord() encounter exception!");
        return;
      }
    }
    com.alipay.pushsdk.c.a.c.e(2, a, "savePubMsgRecord() error!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.data.f
 * JD-Core Version:    0.6.2
 */