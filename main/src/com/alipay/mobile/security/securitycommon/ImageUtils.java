package com.alipay.mobile.security.securitycommon;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;

public class ImageUtils
{
  private static String a = ".200x200.jpg";
  private static String b = ".";
  private static String c = ".50x50.";
  private static String d = ".60x60.";
  private static String e = ".560x370x75x2.jpg";

  private static Bitmap a(FileInputStream paramFileInputStream)
  {
    int i = 1;
    FileDescriptor localFileDescriptor = paramFileInputStream.getFD();
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inSampleSize = i;
    localOptions.inJustDecodeBounds = i;
    BitmapFactory.decodeFileDescriptor(localFileDescriptor, null, localOptions);
    if ((localOptions.mCancel) || (localOptions.outWidth == -1) || (localOptions.outHeight == -1))
    {
      paramFileInputStream.close();
      throw new Exception("invalid bitmap file: " + paramFileInputStream.toString());
    }
    int j = Math.max(i, 20);
    while (true)
    {
      if (i <= j);
      try
      {
        localOptions.inJustDecodeBounds = false;
        localOptions.inSampleSize = 1;
        localOptions.inDither = false;
        localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap localBitmap = BitmapFactory.decodeFileDescriptor(localFileDescriptor, null, localOptions);
        if (localBitmap != null)
        {
          paramFileInputStream.close();
          return localBitmap;
        }
      }
      catch (Throwable localThrowable)
      {
        i++;
        continue;
        paramFileInputStream.close();
        throw new Exception("invalid bitmap file");
      }
      catch (Exception localException)
      {
        break label144;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        label144: break label144;
      }
    }
  }

  public static Bitmap a(String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists())
      return null;
    try
    {
      Bitmap localBitmap = a(new FileInputStream(localFile));
      return localBitmap;
    }
    catch (Throwable localThrowable)
    {
      return null;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static boolean a(BitmapFactory.Options paramOptions)
  {
    if ((paramOptions.outWidth == -1) || (paramOptions.outHeight == -1));
    while (paramOptions.outHeight / paramOptions.outWidth <= 3)
      return false;
    return true;
  }

  // ERROR //
  public static boolean a(String paramString1, String paramString2, Bitmap paramBitmap, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +17 -> 18
    //   4: aload_0
    //   5: invokestatic 136	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: ifne +10 -> 18
    //   11: aload_1
    //   12: invokestatic 136	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   15: ifeq +5 -> 20
    //   18: iconst_0
    //   19: ireturn
    //   20: aload_1
    //   21: ldc 138
    //   23: invokevirtual 144	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   26: ifeq +277 -> 303
    //   29: iconst_1
    //   30: istore 4
    //   32: new 116	java/io/File
    //   35: dup
    //   36: aload_0
    //   37: invokespecial 117	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: astore 5
    //   42: aload 5
    //   44: invokevirtual 121	java/io/File:exists	()Z
    //   47: ifne +9 -> 56
    //   50: aload 5
    //   52: invokevirtual 147	java/io/File:mkdirs	()Z
    //   55: pop
    //   56: new 116	java/io/File
    //   59: dup
    //   60: aload_0
    //   61: aload_1
    //   62: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: astore 6
    //   67: aload 6
    //   69: invokevirtual 121	java/io/File:exists	()Z
    //   72: ifeq +221 -> 293
    //   75: new 116	java/io/File
    //   78: dup
    //   79: aload_0
    //   80: new 78	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 151	java/lang/StringBuilder:<init>	()V
    //   87: aload_1
    //   88: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: ldc 153
    //   93: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   102: astore 7
    //   104: aload 7
    //   106: invokevirtual 156	java/io/File:delete	()Z
    //   109: pop
    //   110: aload 7
    //   112: astore 9
    //   114: iconst_0
    //   115: istore 10
    //   117: new 158	java/io/FileOutputStream
    //   120: dup
    //   121: aload 9
    //   123: invokespecial 159	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   126: astore 11
    //   128: iload 4
    //   130: ifeq +41 -> 171
    //   133: aload_2
    //   134: getstatic 165	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   137: iload_3
    //   138: aload 11
    //   140: invokevirtual 171	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   143: pop
    //   144: aload 11
    //   146: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   149: iload 10
    //   151: ifne +18 -> 169
    //   154: aload 9
    //   156: new 116	java/io/File
    //   159: dup
    //   160: aload_0
    //   161: aload_1
    //   162: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   165: invokevirtual 176	java/io/File:renameTo	(Ljava/io/File;)Z
    //   168: pop
    //   169: iconst_1
    //   170: ireturn
    //   171: aload_2
    //   172: getstatic 179	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   175: iload_3
    //   176: aload 11
    //   178: invokevirtual 171	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   181: pop
    //   182: goto -38 -> 144
    //   185: astore 16
    //   187: aload 11
    //   189: astore 17
    //   191: aload 16
    //   193: invokevirtual 182	java/lang/Exception:printStackTrace	()V
    //   196: aload 17
    //   198: ifnull -180 -> 18
    //   201: aload 17
    //   203: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   206: iconst_0
    //   207: ireturn
    //   208: astore 18
    //   210: iconst_0
    //   211: ireturn
    //   212: astore 12
    //   214: aconst_null
    //   215: astore 11
    //   217: aload 12
    //   219: invokevirtual 183	java/lang/Throwable:printStackTrace	()V
    //   222: aload 11
    //   224: ifnull -206 -> 18
    //   227: aload 11
    //   229: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   232: iconst_0
    //   233: ireturn
    //   234: astore 15
    //   236: iconst_0
    //   237: ireturn
    //   238: astore 13
    //   240: aconst_null
    //   241: astore 11
    //   243: aload 11
    //   245: ifnull +8 -> 253
    //   248: aload 11
    //   250: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   253: aload 13
    //   255: athrow
    //   256: astore 14
    //   258: goto -5 -> 253
    //   261: astore 13
    //   263: goto -20 -> 243
    //   266: astore 13
    //   268: aload 17
    //   270: astore 11
    //   272: goto -29 -> 243
    //   275: astore 12
    //   277: goto -60 -> 217
    //   280: astore 16
    //   282: aconst_null
    //   283: astore 17
    //   285: goto -94 -> 191
    //   288: astore 20
    //   290: goto -121 -> 169
    //   293: aload 6
    //   295: astore 9
    //   297: iconst_1
    //   298: istore 10
    //   300: goto -183 -> 117
    //   303: iconst_0
    //   304: istore 4
    //   306: goto -274 -> 32
    //
    // Exception table:
    //   from	to	target	type
    //   133	144	185	java/lang/Exception
    //   171	182	185	java/lang/Exception
    //   201	206	208	java/io/IOException
    //   117	128	212	java/lang/Throwable
    //   227	232	234	java/io/IOException
    //   117	128	238	finally
    //   248	253	256	java/io/IOException
    //   133	144	261	finally
    //   171	182	261	finally
    //   217	222	261	finally
    //   191	196	266	finally
    //   133	144	275	java/lang/Throwable
    //   171	182	275	java/lang/Throwable
    //   117	128	280	java/lang/Exception
    //   144	149	288	java/io/IOException
    //   154	169	288	java/io/IOException
  }

  public static enum ImagePlot
  {
    public String longHeight = ".112x336xz.jpg";
    public String longWidth = ".336x112xz.jpg";
    public String normal = ".336x336.jpg";

    static
    {
      Default = new ImagePlot("Default", 1, ".320x320.jpg", ".160x240xz.jpg", ".160x240xz.jpg");
      Grid = new ImagePlot("Grid", 2, ".180x180.jpg", ".160x240xz.jpg", ".160x240xz.jpg");
      ImagePlot[] arrayOfImagePlot = new ImagePlot[3];
      arrayOfImagePlot[0] = Post;
      arrayOfImagePlot[1] = Default;
      arrayOfImagePlot[2] = Grid;
    }

    private ImagePlot(String paramString1, String paramString2, String paramString3)
    {
      this.normal = paramString1;
      this.longHeight = paramString3;
      this.longWidth = paramString2;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.ImageUtils
 * JD-Core Version:    0.6.2
 */