package com.alipay.mobile.longlink.a;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;

public class c extends BundlesManager
{
  private static final String b = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(BundlesManagerImpl.class);

  public c(Context paramContext)
  {
    super(paramContext);
  }

  // ERROR //
  private String[] b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 25	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 27	java/lang/StringBuilder:<init>	()V
    //   9: aload_0
    //   10: invokevirtual 30	com/alipay/mobile/longlink/a/c:a	()Ljava/lang/String;
    //   13: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_0
    //   17: getfield 36	com/alipay/mobile/longlink/a/c:a	Ljava/lang/String;
    //   20: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: astore_2
    //   27: iconst_3
    //   28: getstatic 16	com/alipay/mobile/longlink/a/c:b	Ljava/lang/String;
    //   31: new 25	java/lang/StringBuilder
    //   34: dup
    //   35: ldc 41
    //   37: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: aload_2
    //   41: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 47	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: new 49	java/io/File
    //   53: dup
    //   54: aload_2
    //   55: invokespecial 50	java/io/File:<init>	(Ljava/lang/String;)V
    //   58: astore_3
    //   59: aload_3
    //   60: invokevirtual 54	java/io/File:exists	()Z
    //   63: ifeq +124 -> 187
    //   66: aload_3
    //   67: invokevirtual 58	java/io/File:length	()J
    //   70: lconst_0
    //   71: lcmp
    //   72: ifle +115 -> 187
    //   75: new 60	java/io/FileInputStream
    //   78: dup
    //   79: aload_3
    //   80: invokespecial 63	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   83: astore 4
    //   85: aload 4
    //   87: invokevirtual 67	java/io/FileInputStream:available	()I
    //   90: newarray byte
    //   92: astore 6
    //   94: aload 4
    //   96: aload 6
    //   98: invokevirtual 71	java/io/FileInputStream:read	([B)I
    //   101: pop
    //   102: new 73	java/lang/String
    //   105: dup
    //   106: aload 6
    //   108: ldc 75
    //   110: invokespecial 78	java/lang/String:<init>	([BLjava/lang/String;)V
    //   113: astore 8
    //   115: iconst_4
    //   116: getstatic 16	com/alipay/mobile/longlink/a/c:b	Ljava/lang/String;
    //   119: new 25	java/lang/StringBuilder
    //   122: dup
    //   123: ldc 80
    //   125: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: aload 8
    //   130: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokestatic 47	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   139: aload 8
    //   141: invokevirtual 83	java/lang/String:trim	()Ljava/lang/String;
    //   144: invokevirtual 85	java/lang/String:length	()I
    //   147: istore 9
    //   149: aconst_null
    //   150: astore_1
    //   151: iload 9
    //   153: ifle +18 -> 171
    //   156: aload 8
    //   158: invokestatic 90	com/alipay/mobile/longlink/c/b:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   161: astore 10
    //   163: aload 10
    //   165: invokestatic 96	java/util/Arrays:sort	([Ljava/lang/Object;)V
    //   168: aload 10
    //   170: astore_1
    //   171: aload 4
    //   173: invokevirtual 99	java/io/FileInputStream:close	()V
    //   176: aload_1
    //   177: areturn
    //   178: astore 5
    //   180: aload 5
    //   182: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   185: aload_1
    //   186: areturn
    //   187: iconst_3
    //   188: getstatic 16	com/alipay/mobile/longlink/a/c:b	Ljava/lang/String;
    //   191: ldc 104
    //   193: invokestatic 47	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   196: aconst_null
    //   197: areturn
    //   198: astore 11
    //   200: aload 10
    //   202: astore_1
    //   203: aload 11
    //   205: astore 5
    //   207: goto -27 -> 180
    //
    // Exception table:
    //   from	to	target	type
    //   75	149	178	java/lang/Exception
    //   156	163	178	java/lang/Exception
    //   171	176	178	java/lang/Exception
    //   163	168	198	java/lang/Exception
  }

  private String[] b(String paramString)
  {
    int i = 0;
    Object localObject1 = b();
    if ((localObject1 != null) && (localObject1.length > 0))
    {
      if (localObject1.length >= 50)
      {
        localObject1[0] = paramString;
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, BundlesManager, "updatePerMsgList() perMsgId=" + paramString + ", newPubList:" + localObject1.toString());
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

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final boolean a(AppBundle parama)
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, BundlesManager, "isContainMsg() newPerMsgId=" + parama.e());
    String[] arrayOfString = b();
    boolean bool = false;
    if (arrayOfString != null)
      bool = com.alipay.mobile.longlink.BundlesManagerImpl.BundlesManager.a(arrayOfString, parama.e());
    return bool;
  }

  public final void b(AppBundle parama)
  {
    String str1 = parama.e();
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, BundlesManager, "saveMsgRecord() perMsgId=" + str1);
    if ((str1 != null) && (str1.length() > 0))
    {
      String str2 = com.alipay.mobile.longlink.BundlesManagerImpl.BundlesManager.a(b(str1));
      com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, BundlesManager, "saveMsgRecord() listMsgId:" + str2);
      try
      {
        File localFile = new File(a() + this.a);
        if (!localFile.exists())
          localFile.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localFileOutputStream.write(str2.toString().getBytes());
        localFileOutputStream.flush();
        localFileOutputStream.close();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, BundlesManager, "saveMsgRecord() encounter exception!");
        return;
      }
    }
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, BundlesManager, "saveMsgRecord() perMsgId is invalid!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.a.c
 * JD-Core Version:    0.6.2
 */