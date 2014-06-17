package com.alipay.mobile.about.b;

import android.app.Activity;
import android.graphics.Bitmap;

final class f
  implements Runnable
{
  f(Bitmap paramBitmap, Activity paramActivity)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/alipay/mobile/about/b/f:a	Landroid/graphics/Bitmap;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: ldc 26
    //   10: invokestatic 32	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   13: invokevirtual 38	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   16: ifeq -9 -> 7
    //   19: getstatic 42	android/os/Environment:DIRECTORY_DCIM	Ljava/lang/String;
    //   22: invokestatic 46	android/os/Environment:getExternalStoragePublicDirectory	(Ljava/lang/String;)Ljava/io/File;
    //   25: astore_1
    //   26: new 48	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   33: aload_1
    //   34: invokevirtual 54	java/io/File:toString	()Ljava/lang/String;
    //   37: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: getstatic 61	java/io/File:separator	Ljava/lang/String;
    //   43: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc 63
    //   48: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: getstatic 61	java/io/File:separator	Ljava/lang/String;
    //   54: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: astore_2
    //   61: new 51	java/io/File
    //   64: dup
    //   65: aload_2
    //   66: invokespecial 67	java/io/File:<init>	(Ljava/lang/String;)V
    //   69: astore_3
    //   70: aload_3
    //   71: invokevirtual 71	java/io/File:exists	()Z
    //   74: ifne +8 -> 82
    //   77: aload_3
    //   78: invokevirtual 74	java/io/File:mkdir	()Z
    //   81: pop
    //   82: new 51	java/io/File
    //   85: dup
    //   86: new 48	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   93: aload_2
    //   94: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokestatic 80	java/lang/System:currentTimeMillis	()J
    //   100: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   103: ldc 85
    //   105: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokespecial 67	java/io/File:<init>	(Ljava/lang/String;)V
    //   114: astore 4
    //   116: new 87	java/io/FileOutputStream
    //   119: dup
    //   120: aload 4
    //   122: invokespecial 90	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   125: astore 5
    //   127: aload_0
    //   128: getfield 14	com/alipay/mobile/about/b/f:a	Landroid/graphics/Bitmap;
    //   131: getstatic 96	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   134: bipush 100
    //   136: aload 5
    //   138: invokevirtual 102	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   141: pop
    //   142: aload_0
    //   143: getfield 16	com/alipay/mobile/about/b/f:b	Landroid/app/Activity;
    //   146: invokevirtual 108	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   149: astore 13
    //   151: new 110	android/content/ContentValues
    //   154: dup
    //   155: iconst_4
    //   156: invokespecial 113	android/content/ContentValues:<init>	(I)V
    //   159: astore 14
    //   161: aload 14
    //   163: ldc 115
    //   165: invokestatic 80	java/lang/System:currentTimeMillis	()J
    //   168: invokestatic 121	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   171: invokevirtual 125	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   174: aload 14
    //   176: ldc 127
    //   178: ldc 129
    //   180: invokevirtual 132	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: aload 14
    //   185: ldc 134
    //   187: iconst_0
    //   188: invokestatic 139	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   191: invokevirtual 142	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   194: aload 14
    //   196: ldc 144
    //   198: aload 4
    //   200: invokevirtual 147	java/io/File:getPath	()Ljava/lang/String;
    //   203: invokevirtual 132	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   206: new 48	java/lang/StringBuilder
    //   209: dup
    //   210: ldc 149
    //   212: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 4
    //   217: invokevirtual 147	java/io/File:getPath	()Ljava/lang/String;
    //   220: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc 152
    //   225: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload 4
    //   230: invokevirtual 155	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   233: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: pop
    //   240: aload 13
    //   242: getstatic 161	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   245: aload 14
    //   247: invokevirtual 167	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   250: pop
    //   251: aload 5
    //   253: invokevirtual 170	java/io/FileOutputStream:flush	()V
    //   256: aload 5
    //   258: invokevirtual 173	java/io/FileOutputStream:close	()V
    //   261: return
    //   262: astore 18
    //   264: aload 18
    //   266: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   269: return
    //   270: astore 17
    //   272: aload 17
    //   274: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   277: goto -21 -> 256
    //   280: astore 6
    //   282: aconst_null
    //   283: astore 5
    //   285: aload 6
    //   287: invokevirtual 177	java/io/FileNotFoundException:printStackTrace	()V
    //   290: aload 5
    //   292: ifnull -285 -> 7
    //   295: aload 5
    //   297: invokevirtual 170	java/io/FileOutputStream:flush	()V
    //   300: aload 5
    //   302: invokevirtual 173	java/io/FileOutputStream:close	()V
    //   305: return
    //   306: astore 11
    //   308: aload 11
    //   310: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   313: return
    //   314: astore 10
    //   316: aload 10
    //   318: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   321: goto -21 -> 300
    //   324: astore 7
    //   326: aconst_null
    //   327: astore 5
    //   329: aload 5
    //   331: ifnull +13 -> 344
    //   334: aload 5
    //   336: invokevirtual 170	java/io/FileOutputStream:flush	()V
    //   339: aload 5
    //   341: invokevirtual 173	java/io/FileOutputStream:close	()V
    //   344: aload 7
    //   346: athrow
    //   347: astore 8
    //   349: aload 8
    //   351: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   354: goto -15 -> 339
    //   357: astore 9
    //   359: aload 9
    //   361: invokevirtual 176	java/io/IOException:printStackTrace	()V
    //   364: goto -20 -> 344
    //   367: astore 7
    //   369: goto -40 -> 329
    //   372: astore 6
    //   374: goto -89 -> 285
    //
    // Exception table:
    //   from	to	target	type
    //   256	261	262	java/io/IOException
    //   251	256	270	java/io/IOException
    //   116	127	280	java/io/FileNotFoundException
    //   300	305	306	java/io/IOException
    //   295	300	314	java/io/IOException
    //   116	127	324	finally
    //   334	339	347	java/io/IOException
    //   339	344	357	java/io/IOException
    //   127	251	367	finally
    //   285	290	367	finally
    //   127	251	372	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.b.f
 * JD-Core Version:    0.6.2
 */