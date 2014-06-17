package com.alipay.mobile.security.accountmanager.AccountInfo.biz.impl;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.app.ui.BaseActivity;

final class a
  implements Runnable
{
  a(SecurityAccountQrCodeImpl paramSecurityAccountQrCodeImpl, Bitmap paramBitmap, BaseActivity paramBaseActivity)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: ldc 30
    //   2: invokestatic 36	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   5: invokevirtual 42	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   8: ifeq +315 -> 323
    //   11: getstatic 46	android/os/Environment:DIRECTORY_DCIM	Ljava/lang/String;
    //   14: invokestatic 50	android/os/Environment:getExternalStoragePublicDirectory	(Ljava/lang/String;)Ljava/io/File;
    //   17: astore_1
    //   18: new 52	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   25: aload_1
    //   26: invokevirtual 58	java/io/File:toString	()Ljava/lang/String;
    //   29: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: getstatic 65	java/io/File:separator	Ljava/lang/String;
    //   35: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 67
    //   40: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: getstatic 65	java/io/File:separator	Ljava/lang/String;
    //   46: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: astore_2
    //   53: new 52	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   60: aload_2
    //   61: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokestatic 74	java/lang/System:currentTimeMillis	()J
    //   67: invokevirtual 77	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   70: ldc 79
    //   72: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: astore_3
    //   79: new 55	java/io/File
    //   82: dup
    //   83: aload_3
    //   84: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   87: astore 4
    //   89: aconst_null
    //   90: astore 5
    //   92: new 55	java/io/File
    //   95: dup
    //   96: aload_2
    //   97: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   100: astore 6
    //   102: aload 6
    //   104: invokevirtual 86	java/io/File:exists	()Z
    //   107: ifne +9 -> 116
    //   110: aload 6
    //   112: invokevirtual 89	java/io/File:mkdirs	()Z
    //   115: pop
    //   116: new 91	java/io/FileOutputStream
    //   119: dup
    //   120: aload 4
    //   122: invokespecial 94	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   125: astore 8
    //   127: aload_0
    //   128: getfield 16	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a:c	Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;
    //   131: aload_0
    //   132: getfield 18	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a:a	Landroid/graphics/Bitmap;
    //   135: invokestatic 100	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl:access$000	(Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/SecurityAccountQrCodeImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   138: getstatic 106	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   141: bipush 100
    //   143: aload 8
    //   145: invokevirtual 112	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   148: pop
    //   149: aload_0
    //   150: getfield 20	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a:b	Lcom/alipay/mobile/framework/app/ui/BaseActivity;
    //   153: invokevirtual 118	com/alipay/mobile/framework/app/ui/BaseActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   156: astore 13
    //   158: new 120	android/content/ContentValues
    //   161: dup
    //   162: iconst_4
    //   163: invokespecial 123	android/content/ContentValues:<init>	(I)V
    //   166: astore 14
    //   168: aload 14
    //   170: ldc 125
    //   172: invokestatic 74	java/lang/System:currentTimeMillis	()J
    //   175: invokestatic 131	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   178: invokevirtual 135	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   181: aload 14
    //   183: ldc 137
    //   185: ldc 139
    //   187: invokevirtual 142	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   190: aload 14
    //   192: ldc 144
    //   194: iconst_0
    //   195: invokestatic 149	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   198: invokevirtual 152	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   201: aload 14
    //   203: ldc 154
    //   205: aload_3
    //   206: invokevirtual 142	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload 13
    //   211: getstatic 160	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   214: aload 14
    //   216: invokevirtual 166	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   219: pop
    //   220: aload_0
    //   221: getfield 20	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a:b	Lcom/alipay/mobile/framework/app/ui/BaseActivity;
    //   224: ldc 168
    //   226: iconst_0
    //   227: invokevirtual 172	com/alipay/mobile/framework/app/ui/BaseActivity:toast	(Ljava/lang/String;I)V
    //   230: aload 8
    //   232: invokevirtual 175	java/io/FileOutputStream:flush	()V
    //   235: aload 8
    //   237: invokevirtual 178	java/io/FileOutputStream:close	()V
    //   240: return
    //   241: astore 16
    //   243: aload 16
    //   245: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   248: return
    //   249: astore 10
    //   251: aload 10
    //   253: invokevirtual 182	java/io/FileNotFoundException:printStackTrace	()V
    //   256: aload_0
    //   257: getfield 20	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a:b	Lcom/alipay/mobile/framework/app/ui/BaseActivity;
    //   260: ldc 184
    //   262: iconst_0
    //   263: invokevirtual 172	com/alipay/mobile/framework/app/ui/BaseActivity:toast	(Ljava/lang/String;I)V
    //   266: aload 5
    //   268: ifnull -28 -> 240
    //   271: aload 5
    //   273: invokevirtual 175	java/io/FileOutputStream:flush	()V
    //   276: aload 5
    //   278: invokevirtual 178	java/io/FileOutputStream:close	()V
    //   281: return
    //   282: astore 11
    //   284: aload 11
    //   286: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   289: return
    //   290: astore 7
    //   292: aconst_null
    //   293: astore 8
    //   295: aload 8
    //   297: ifnull +13 -> 310
    //   300: aload 8
    //   302: invokevirtual 175	java/io/FileOutputStream:flush	()V
    //   305: aload 8
    //   307: invokevirtual 178	java/io/FileOutputStream:close	()V
    //   310: aload 7
    //   312: athrow
    //   313: astore 9
    //   315: aload 9
    //   317: invokevirtual 181	java/io/IOException:printStackTrace	()V
    //   320: goto -10 -> 310
    //   323: aload_0
    //   324: getfield 20	com/alipay/mobile/security/accountmanager/AccountInfo/biz/impl/a:b	Lcom/alipay/mobile/framework/app/ui/BaseActivity;
    //   327: ldc 184
    //   329: iconst_0
    //   330: invokevirtual 172	com/alipay/mobile/framework/app/ui/BaseActivity:toast	(Ljava/lang/String;I)V
    //   333: return
    //   334: astore 7
    //   336: goto -41 -> 295
    //   339: astore 7
    //   341: aload 5
    //   343: astore 8
    //   345: goto -50 -> 295
    //   348: astore 10
    //   350: aload 8
    //   352: astore 5
    //   354: goto -103 -> 251
    //
    // Exception table:
    //   from	to	target	type
    //   230	240	241	java/io/IOException
    //   92	116	249	java/io/FileNotFoundException
    //   116	127	249	java/io/FileNotFoundException
    //   271	281	282	java/io/IOException
    //   92	116	290	finally
    //   116	127	290	finally
    //   300	310	313	java/io/IOException
    //   127	230	334	finally
    //   251	266	339	finally
    //   127	230	348	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.biz.impl.a
 * JD-Core Version:    0.6.2
 */