package com.alipay.mobile.security.securitycommon;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class LWThumbnailUtils
{
  private static int a(Bitmap paramBitmap)
  {
    int i = 50;
    int j = paramBitmap.getWidth() * paramBitmap.getHeight() / 1024 / 8;
    int k = 110;
    if (paramBitmap.getHeight() / paramBitmap.getWidth() >= 3)
      k = 160;
    if (j > 300);
    for (i = 10; ; i = 100)
      while (true)
      {
        int m = i;
        label53: if (i >= 10);
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          paramBitmap.compress(Bitmap.CompressFormat.JPEG, i, localByteArrayOutputStream);
          int n = localByteArrayOutputStream.toByteArray().length / 1024;
          if (n > k)
          {
            int i1 = i - 10;
            m = i;
            i = i1;
            break label53;
            if (j > 260)
              i = 20;
            else if (j > 220)
              i = 30;
            else if (j > 180)
              i = 40;
            else if (j <= 140)
              if (j >= 110)
              {
                i = 60;
              }
              else if (j >= 100)
              {
                i = 65;
              }
              else if (j >= 90)
              {
                i = 70;
              }
              else if (j >= 80)
              {
                i = 75;
              }
              else if (j >= 70)
              {
                i = 80;
              }
              else if (j >= 60)
              {
                i = 85;
              }
              else if (j >= i)
              {
                i = 90;
                continue;
                i = m;
              }
          }
          else
          {
            return i;
          }
        }
        catch (Throwable localThrowable)
        {
          return 10;
        }
        catch (Exception localException)
        {
          return 10;
        }
      }
  }

  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = 1;
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int j;
    int k;
    if (paramInt2 == -1)
    {
      j = i;
      if (paramInt1 != -1)
        break label81;
      k = 128;
      label34: if (k >= j)
        break label106;
    }
    while (true)
    {
      if (j > 8)
        break label134;
      while (i < j)
        i <<= 1;
      j = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
      break;
      label81: k = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
      break label34;
      label106: if ((paramInt2 == -1) && (paramInt1 == -1))
        j = i;
      else if (paramInt1 != -1)
        j = k;
    }
    label134: i = 8 * ((j + 7) / 8);
    return i;
  }

  private static int a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    try
    {
      int i = new ExifInterface(paramString).getAttributeInt("Orientation", 1);
      switch (i)
      {
      case 4:
      case 5:
      case 7:
      default:
        return 0;
      case 6:
        return 90;
      case 8:
        return 270;
      case 3:
      }
      return 180;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public static Bitmap a(Context paramContext, Uri paramUri)
  {
    Bitmap localBitmap = a(paramContext, paramUri, 240, 240);
    if (localBitmap != null)
      return a(localBitmap, a(paramUri.getPath()));
    return null;
  }

  // ERROR //
  private static Bitmap a(Context paramContext, Uri paramUri, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: iconst_0
    //   4: istore 5
    //   6: ldc 105
    //   8: aload_1
    //   9: invokevirtual 108	android/net/Uri:getScheme	()Ljava/lang/String;
    //   12: invokevirtual 114	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   15: ifne +351 -> 366
    //   18: new 116	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   25: aload_0
    //   26: invokestatic 122	com/alipay/mobile/security/securitycommon/FileUtil:a	(Landroid/content/Context;)Ljava/io/File;
    //   29: invokevirtual 127	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   32: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: getstatic 135	java/io/File:separator	Ljava/lang/String;
    //   38: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokestatic 141	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   44: invokevirtual 144	java/util/UUID:toString	()Ljava/lang/String;
    //   47: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc 146
    //   52: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: astore 6
    //   60: new 124	java/io/File
    //   63: dup
    //   64: aload 6
    //   66: invokespecial 148	java/io/File:<init>	(Ljava/lang/String;)V
    //   69: astore 7
    //   71: new 150	java/io/FileOutputStream
    //   74: dup
    //   75: aload 7
    //   77: invokespecial 153	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   80: astore 8
    //   82: aload_0
    //   83: invokevirtual 159	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   86: aload_1
    //   87: invokevirtual 165	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   90: astore 24
    //   92: aload 24
    //   94: astore 4
    //   96: sipush 1024
    //   99: newarray byte
    //   101: astore 26
    //   103: aload 4
    //   105: aload 26
    //   107: invokevirtual 171	java/io/InputStream:read	([B)I
    //   110: istore 27
    //   112: iload 27
    //   114: iconst_m1
    //   115: if_icmpeq +90 -> 205
    //   118: aload 8
    //   120: aload 26
    //   122: iconst_0
    //   123: iload 27
    //   125: invokevirtual 175	java/io/FileOutputStream:write	([BII)V
    //   128: iinc 5 1
    //   131: iload 5
    //   133: iconst_5
    //   134: irem
    //   135: ifne -32 -> 103
    //   138: aload 8
    //   140: invokevirtual 178	java/io/FileOutputStream:flush	()V
    //   143: goto -40 -> 103
    //   146: astore 21
    //   148: aload 4
    //   150: ifnull +8 -> 158
    //   153: aload 4
    //   155: invokevirtual 181	java/io/InputStream:close	()V
    //   158: aload 8
    //   160: ifnull +8 -> 168
    //   163: aload 8
    //   165: invokevirtual 182	java/io/FileOutputStream:close	()V
    //   168: aload 6
    //   170: iload_2
    //   171: iload_3
    //   172: invokestatic 185	com/alipay/mobile/security/securitycommon/LWThumbnailUtils:a	(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    //   175: astore 11
    //   177: new 124	java/io/File
    //   180: dup
    //   181: aload 6
    //   183: invokespecial 148	java/io/File:<init>	(Ljava/lang/String;)V
    //   186: astore 12
    //   188: aload 12
    //   190: invokevirtual 189	java/io/File:exists	()Z
    //   193: ifeq +9 -> 202
    //   196: aload 12
    //   198: invokevirtual 192	java/io/File:delete	()Z
    //   201: pop
    //   202: aload 11
    //   204: areturn
    //   205: aload 4
    //   207: ifnull +8 -> 215
    //   210: aload 4
    //   212: invokevirtual 181	java/io/InputStream:close	()V
    //   215: aload 8
    //   217: invokevirtual 182	java/io/FileOutputStream:close	()V
    //   220: goto -52 -> 168
    //   223: astore 28
    //   225: aload 28
    //   227: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   230: goto -62 -> 168
    //   233: astore 29
    //   235: aload 29
    //   237: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   240: goto -25 -> 215
    //   243: astore 23
    //   245: aload 23
    //   247: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   250: goto -92 -> 158
    //   253: astore 22
    //   255: aload 22
    //   257: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   260: goto -92 -> 168
    //   263: astore 32
    //   265: aconst_null
    //   266: astore 8
    //   268: aload 4
    //   270: ifnull +8 -> 278
    //   273: aload 4
    //   275: invokevirtual 181	java/io/InputStream:close	()V
    //   278: aload 8
    //   280: ifnull -112 -> 168
    //   283: aload 8
    //   285: invokevirtual 182	java/io/FileOutputStream:close	()V
    //   288: goto -120 -> 168
    //   291: astore 10
    //   293: aload 10
    //   295: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   298: goto -130 -> 168
    //   301: astore 14
    //   303: aload 14
    //   305: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   308: goto -30 -> 278
    //   311: astore 31
    //   313: aconst_null
    //   314: astore 16
    //   316: aload 31
    //   318: astore 17
    //   320: aconst_null
    //   321: astore 18
    //   323: aload 18
    //   325: ifnull +8 -> 333
    //   328: aload 18
    //   330: invokevirtual 181	java/io/InputStream:close	()V
    //   333: aload 16
    //   335: ifnull +8 -> 343
    //   338: aload 16
    //   340: invokevirtual 182	java/io/FileOutputStream:close	()V
    //   343: aload 17
    //   345: athrow
    //   346: astore 20
    //   348: aload 20
    //   350: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   353: goto -20 -> 333
    //   356: astore 19
    //   358: aload 19
    //   360: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   363: goto -20 -> 343
    //   366: aload_1
    //   367: invokevirtual 98	android/net/Uri:getPath	()Ljava/lang/String;
    //   370: iload_2
    //   371: iload_3
    //   372: invokestatic 185	com/alipay/mobile/security/securitycommon/LWThumbnailUtils:a	(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    //   375: areturn
    //   376: astore 15
    //   378: aload 8
    //   380: astore 16
    //   382: aload 15
    //   384: astore 17
    //   386: aconst_null
    //   387: astore 18
    //   389: goto -66 -> 323
    //   392: astore 25
    //   394: aload 8
    //   396: astore 16
    //   398: aload 4
    //   400: astore 18
    //   402: aload 25
    //   404: astore 17
    //   406: goto -83 -> 323
    //   409: astore 9
    //   411: goto -143 -> 268
    //   414: astore 30
    //   416: aconst_null
    //   417: astore 4
    //   419: aconst_null
    //   420: astore 8
    //   422: goto -274 -> 148
    //
    // Exception table:
    //   from	to	target	type
    //   82	92	146	java/lang/Exception
    //   96	103	146	java/lang/Exception
    //   103	112	146	java/lang/Exception
    //   118	128	146	java/lang/Exception
    //   138	143	146	java/lang/Exception
    //   215	220	223	java/lang/Exception
    //   210	215	233	java/io/IOException
    //   153	158	243	java/io/IOException
    //   163	168	253	java/lang/Exception
    //   71	82	263	java/lang/Throwable
    //   283	288	291	java/lang/Exception
    //   273	278	301	java/io/IOException
    //   71	82	311	finally
    //   328	333	346	java/io/IOException
    //   338	343	356	java/lang/Exception
    //   82	92	376	finally
    //   96	103	392	finally
    //   103	112	392	finally
    //   118	128	392	finally
    //   138	143	392	finally
    //   82	92	409	java/lang/Throwable
    //   96	103	409	java/lang/Throwable
    //   103	112	409	java/lang/Throwable
    //   118	128	409	java/lang/Throwable
    //   138	143	409	java/lang/Throwable
    //   71	82	414	java/lang/Exception
  }

  private static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    Matrix localMatrix;
    if ((paramInt != 0) && (paramBitmap != null))
    {
      localMatrix = new Matrix();
      localMatrix.setRotate(paramInt, paramBitmap.getWidth() / 2, paramBitmap.getHeight() / 2);
    }
    try
    {
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
      paramBitmap = localBitmap;
      return paramBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return paramBitmap;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return paramBitmap;
  }

  // ERROR //
  private static Bitmap a(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 74	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +9 -> 13
    //   7: aconst_null
    //   8: astore 24
    //   10: aload 24
    //   12: areturn
    //   13: new 124	java/io/File
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 148	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: astore_3
    //   22: aload_3
    //   23: invokevirtual 189	java/io/File:exists	()Z
    //   26: ifne +5 -> 31
    //   29: aconst_null
    //   30: areturn
    //   31: new 209	java/io/FileInputStream
    //   34: dup
    //   35: aload_3
    //   36: invokespecial 210	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   39: astore 4
    //   41: aload 4
    //   43: invokevirtual 214	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   46: astore 6
    //   48: new 42	android/graphics/BitmapFactory$Options
    //   51: dup
    //   52: invokespecial 215	android/graphics/BitmapFactory$Options:<init>	()V
    //   55: astore 7
    //   57: aload 7
    //   59: iconst_1
    //   60: putfield 218	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   63: aload 7
    //   65: iconst_1
    //   66: putfield 222	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   69: aload 6
    //   71: aconst_null
    //   72: aload 7
    //   74: invokestatic 228	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   77: pop
    //   78: aload 7
    //   80: getfield 231	android/graphics/BitmapFactory$Options:mCancel	Z
    //   83: ifne +21 -> 104
    //   86: aload 7
    //   88: getfield 46	android/graphics/BitmapFactory$Options:outWidth	I
    //   91: iconst_m1
    //   92: if_icmpeq +12 -> 104
    //   95: aload 7
    //   97: getfield 49	android/graphics/BitmapFactory$Options:outHeight	I
    //   100: iconst_m1
    //   101: if_icmpne +77 -> 178
    //   104: aload 4
    //   106: invokevirtual 232	java/io/FileInputStream:close	()V
    //   109: aconst_null
    //   110: areturn
    //   111: astore 5
    //   113: aload 5
    //   115: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   118: aconst_null
    //   119: areturn
    //   120: astore 10
    //   122: aload 10
    //   124: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   127: aload 4
    //   129: invokevirtual 232	java/io/FileInputStream:close	()V
    //   132: aconst_null
    //   133: areturn
    //   134: astore 11
    //   136: aload 11
    //   138: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   141: goto -9 -> 132
    //   144: astore 8
    //   146: aload 8
    //   148: invokevirtual 205	java/lang/Throwable:printStackTrace	()V
    //   151: aload 4
    //   153: invokevirtual 232	java/io/FileInputStream:close	()V
    //   156: aconst_null
    //   157: areturn
    //   158: astore 9
    //   160: aload 9
    //   162: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   165: goto -9 -> 156
    //   168: astore 13
    //   170: aload 13
    //   172: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   175: goto -66 -> 109
    //   178: iload_1
    //   179: iload_2
    //   180: invokestatic 235	java/lang/Math:min	(II)I
    //   183: istore 14
    //   185: iload_1
    //   186: iload_2
    //   187: imul
    //   188: istore 15
    //   190: aload 7
    //   192: invokestatic 240	com/alipay/mobile/security/securitycommon/ImageUtils:a	(Landroid/graphics/BitmapFactory$Options;)Z
    //   195: ifeq +49 -> 244
    //   198: aload 7
    //   200: getfield 46	android/graphics/BitmapFactory$Options:outWidth	I
    //   203: ifeq +127 -> 330
    //   206: aload 7
    //   208: getfield 49	android/graphics/BitmapFactory$Options:outHeight	I
    //   211: aload 7
    //   213: getfield 46	android/graphics/BitmapFactory$Options:outWidth	I
    //   216: imul
    //   217: istore 15
    //   219: aload 7
    //   221: getfield 46	android/graphics/BitmapFactory$Options:outWidth	I
    //   224: sipush 800
    //   227: if_icmplt +17 -> 244
    //   230: iload 15
    //   232: aload 7
    //   234: getfield 46	android/graphics/BitmapFactory$Options:outWidth	I
    //   237: sipush 400
    //   240: idiv
    //   241: idiv
    //   242: istore 15
    //   244: aload 7
    //   246: iload 14
    //   248: iload 15
    //   250: invokestatic 242	com/alipay/mobile/security/securitycommon/LWThumbnailUtils:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   253: istore 16
    //   255: iload 16
    //   257: bipush 40
    //   259: invokestatic 245	java/lang/Math:max	(II)I
    //   262: istore 17
    //   264: aload 7
    //   266: iconst_0
    //   267: putfield 222	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   270: aload 7
    //   272: iconst_0
    //   273: putfield 248	android/graphics/BitmapFactory$Options:inDither	Z
    //   276: aload 7
    //   278: getstatic 254	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   281: putfield 257	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   284: iload 16
    //   286: istore 18
    //   288: iload 18
    //   290: iload 17
    //   292: if_icmpgt +77 -> 369
    //   295: aload 7
    //   297: iload 18
    //   299: putfield 218	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   302: aload 6
    //   304: aconst_null
    //   305: aload 7
    //   307: invokestatic 228	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   310: astore 23
    //   312: aload 23
    //   314: astore 24
    //   316: aload 24
    //   318: ifnonnull -308 -> 10
    //   321: iload 18
    //   323: iconst_2
    //   324: imul
    //   325: istore 18
    //   327: goto -39 -> 288
    //   330: iload 15
    //   332: iconst_4
    //   333: imul
    //   334: istore 15
    //   336: goto -92 -> 244
    //   339: astore 22
    //   341: aload 22
    //   343: invokevirtual 258	java/lang/OutOfMemoryError:printStackTrace	()V
    //   346: goto -25 -> 321
    //   349: astore 21
    //   351: aload 21
    //   353: invokevirtual 193	java/lang/Exception:printStackTrace	()V
    //   356: goto -35 -> 321
    //   359: astore 20
    //   361: aload 20
    //   363: invokevirtual 205	java/lang/Throwable:printStackTrace	()V
    //   366: goto -45 -> 321
    //   369: aload 4
    //   371: invokevirtual 232	java/io/FileInputStream:close	()V
    //   374: aconst_null
    //   375: areturn
    //   376: astore 19
    //   378: aload 19
    //   380: invokevirtual 88	java/io/IOException:printStackTrace	()V
    //   383: goto -9 -> 374
    //
    // Exception table:
    //   from	to	target	type
    //   31	48	111	java/lang/Exception
    //   69	78	120	java/lang/Exception
    //   127	132	134	java/io/IOException
    //   69	78	144	java/lang/Throwable
    //   151	156	158	java/io/IOException
    //   104	109	168	java/io/IOException
    //   295	312	339	java/lang/OutOfMemoryError
    //   295	312	349	java/lang/Exception
    //   295	312	359	java/lang/Throwable
    //   369	374	376	java/io/IOException
  }

  public static File b(Context paramContext, Uri paramUri)
  {
    if (paramUri != null)
    {
      Bitmap localBitmap1 = a(paramContext, paramUri, 800, 1280);
      if (localBitmap1 != null)
      {
        Bitmap localBitmap2 = a(localBitmap1, a(paramUri.getPath()));
        if (localBitmap2 != null)
        {
          String str1 = UUID.randomUUID().toString() + ".jpg";
          String str2 = FileUtil.a(paramContext).getAbsolutePath();
          if (ImageUtils.a(str2, str1, localBitmap2, a(localBitmap1)))
          {
            localBitmap2.recycle();
            return new File(str2, str1);
          }
          localBitmap2.recycle();
        }
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.LWThumbnailUtils
 * JD-Core Version:    0.6.2
 */