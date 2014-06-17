package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class da
  implements ImageLoaderListener
{
  da(AlipassShareActivity paramAlipassShareActivity, String paramString1, String paramString2, String paramString3)
  {
  }

  public final void onCancelled(String paramString)
  {
    this.d.a(this.a, this.b, this.c, null);
  }

  public final void onFailed(String paramString1, int paramInt, String paramString2)
  {
    this.d.a(this.a, this.b, this.c, null);
  }

  // ERROR //
  public final void onPostLoad(String paramString, android.graphics.Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 40	java/io/File
    //   5: dup
    //   6: ldc 42
    //   8: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore 4
    //   13: aload 4
    //   15: invokevirtual 48	java/io/File:exists	()Z
    //   18: ifeq +9 -> 27
    //   21: aload 4
    //   23: invokevirtual 51	java/io/File:delete	()Z
    //   26: pop
    //   27: iconst_1
    //   28: istore 5
    //   30: new 53	java/io/BufferedOutputStream
    //   33: dup
    //   34: new 55	java/io/FileOutputStream
    //   37: dup
    //   38: aload 4
    //   40: invokespecial 58	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   43: invokespecial 61	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   46: astore 6
    //   48: aload_2
    //   49: getstatic 67	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   52: bipush 100
    //   54: aload 6
    //   56: invokevirtual 73	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   59: pop
    //   60: aload 6
    //   62: invokevirtual 76	java/io/BufferedOutputStream:flush	()V
    //   65: aload 6
    //   67: invokevirtual 79	java/io/BufferedOutputStream:close	()V
    //   70: aload_0
    //   71: getfield 16	com/alipay/mobile/alipassapp/ui/da:d	Lcom/alipay/mobile/alipassapp/ui/AlipassShareActivity;
    //   74: astore 9
    //   76: aload_0
    //   77: getfield 18	com/alipay/mobile/alipassapp/ui/da:a	Ljava/lang/String;
    //   80: astore 10
    //   82: aload_0
    //   83: getfield 20	com/alipay/mobile/alipassapp/ui/da:b	Ljava/lang/String;
    //   86: astore 11
    //   88: aload_0
    //   89: getfield 22	com/alipay/mobile/alipassapp/ui/da:c	Ljava/lang/String;
    //   92: astore 12
    //   94: iload 5
    //   96: ifeq +87 -> 183
    //   99: aload 4
    //   101: invokevirtual 83	java/io/File:toString	()Ljava/lang/String;
    //   104: astore 13
    //   106: aload 9
    //   108: aload 10
    //   110: aload 11
    //   112: aload 12
    //   114: aload 13
    //   116: invokevirtual 32	com/alipay/mobile/alipassapp/ui/AlipassShareActivity:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   119: return
    //   120: astore 21
    //   122: aconst_null
    //   123: astore 6
    //   125: aload 6
    //   127: ifnull +8 -> 135
    //   130: aload 6
    //   132: invokevirtual 76	java/io/BufferedOutputStream:flush	()V
    //   135: iconst_0
    //   136: istore 5
    //   138: aload 6
    //   140: ifnull -70 -> 70
    //   143: aload 6
    //   145: invokevirtual 79	java/io/BufferedOutputStream:close	()V
    //   148: iconst_0
    //   149: istore 5
    //   151: goto -81 -> 70
    //   154: astore 8
    //   156: iconst_0
    //   157: istore 5
    //   159: goto -89 -> 70
    //   162: astore 15
    //   164: aload_3
    //   165: ifnull +7 -> 172
    //   168: aload_3
    //   169: invokevirtual 76	java/io/BufferedOutputStream:flush	()V
    //   172: aload_3
    //   173: ifnull +7 -> 180
    //   176: aload_3
    //   177: invokevirtual 79	java/io/BufferedOutputStream:close	()V
    //   180: aload 15
    //   182: athrow
    //   183: aconst_null
    //   184: astore 13
    //   186: goto -80 -> 106
    //   189: astore 19
    //   191: goto -126 -> 65
    //   194: astore 20
    //   196: goto -126 -> 70
    //   199: astore 14
    //   201: goto -66 -> 135
    //   204: astore 17
    //   206: goto -34 -> 172
    //   209: astore 16
    //   211: goto -31 -> 180
    //   214: astore 15
    //   216: aload 6
    //   218: astore_3
    //   219: goto -55 -> 164
    //   222: astore 7
    //   224: goto -99 -> 125
    //
    // Exception table:
    //   from	to	target	type
    //   30	48	120	java/lang/Exception
    //   143	148	154	java/lang/Exception
    //   30	48	162	finally
    //   60	65	189	java/lang/Exception
    //   65	70	194	java/lang/Exception
    //   130	135	199	java/lang/Exception
    //   168	172	204	java/lang/Exception
    //   176	180	209	java/lang/Exception
    //   48	60	214	finally
    //   48	60	222	java/lang/Exception
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.da
 * JD-Core Version:    0.6.2
 */