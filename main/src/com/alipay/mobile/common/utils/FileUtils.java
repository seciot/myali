package com.alipay.mobile.common.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUtils
{
  public static int calculateInSampleSize(BitmapFactory.Options paramOptions, int paramInt)
  {
    int i = paramOptions.outWidth;
    int j = 1;
    if (i > paramInt)
      j = Math.round(i / paramInt);
    return j;
  }

  public static boolean copyFile(File paramFile1, File paramFile2)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile1);
      try
      {
        boolean bool = copyToFile(localFileInputStream, paramFile2);
        return bool;
      }
      finally
      {
        localFileInputStream.close();
      }
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public static boolean copyToFile(InputStream paramInputStream, File paramFile)
  {
    try
    {
      if (paramFile.exists())
        paramFile.delete();
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
      try
      {
        byte[] arrayOfByte = new byte[4096];
        while (true)
        {
          int i = paramInputStream.read(arrayOfByte);
          if (i < 0)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
        localFileOutputStream.close();
      }
      localFileOutputStream.close();
      return true;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public static void delFiles(File paramFile)
  {
    if ((paramFile != null) && (paramFile.exists()) && (paramFile.isDirectory()))
    {
      arrayOfFile = paramFile.listFiles();
      if ((arrayOfFile == null) || (arrayOfFile.length != 0));
    }
    while (paramFile == null)
    {
      File[] arrayOfFile;
      paramFile.delete();
      while (true)
      {
        return;
        if (arrayOfFile != null)
        {
          int i = arrayOfFile.length;
          for (int j = 0; j < i; j++)
          {
            if (arrayOfFile[j].isDirectory())
              delFiles(arrayOfFile[j]);
            arrayOfFile[j].delete();
          }
        }
      }
    }
    paramFile.delete();
  }

  public static BitmapFactory.Options getFileOption(File paramFile)
  {
    if ((paramFile != null) && (paramFile.exists()))
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions);
      return localOptions;
    }
    return null;
  }

  public static Bitmap getImageBitmap(int paramInt, File paramFile)
  {
    BitmapFactory.Options localOptions = getFileOption(paramFile);
    localOptions.inSampleSize = calculateInSampleSize(localOptions, paramInt);
    localOptions.inJustDecodeBounds = false;
    return BitmapFactory.decodeFile(paramFile.getAbsolutePath(), localOptions);
  }

  // ERROR //
  public static java.lang.String md5sum(File paramFile)
  {
    // Byte code:
    //   0: sipush 1024
    //   3: newarray byte
    //   5: astore_1
    //   6: new 28	java/io/FileInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 31	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   14: astore_2
    //   15: ldc 105
    //   17: invokestatic 111	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   20: astore 7
    //   22: aload_2
    //   23: aload_1
    //   24: invokevirtual 56	java/io/InputStream:read	([B)I
    //   27: istore 8
    //   29: iload 8
    //   31: ifle +27 -> 58
    //   34: aload 7
    //   36: aload_1
    //   37: iconst_0
    //   38: iload 8
    //   40: invokevirtual 114	java/security/MessageDigest:update	([BII)V
    //   43: goto -21 -> 22
    //   46: astore 5
    //   48: aload_2
    //   49: ifnull +7 -> 56
    //   52: aload_2
    //   53: invokevirtual 40	java/io/InputStream:close	()V
    //   56: aconst_null
    //   57: areturn
    //   58: aload 7
    //   60: invokevirtual 118	java/security/MessageDigest:digest	()[B
    //   63: invokestatic 124	com/alipay/mobile/common/utils/HexStringUtil:byteArrayToHexString	([B)Ljava/lang/String;
    //   66: astore 9
    //   68: aload_2
    //   69: invokevirtual 40	java/io/InputStream:close	()V
    //   72: aload 9
    //   74: areturn
    //   75: astore 10
    //   77: aload 9
    //   79: areturn
    //   80: astore 12
    //   82: aconst_null
    //   83: astore_2
    //   84: aload 12
    //   86: astore_3
    //   87: aload_2
    //   88: ifnull +7 -> 95
    //   91: aload_2
    //   92: invokevirtual 40	java/io/InputStream:close	()V
    //   95: aload_3
    //   96: athrow
    //   97: astore 6
    //   99: aconst_null
    //   100: areturn
    //   101: astore 4
    //   103: goto -8 -> 95
    //   106: astore_3
    //   107: goto -20 -> 87
    //   110: astore 11
    //   112: aconst_null
    //   113: astore_2
    //   114: goto -66 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   15	22	46	java/lang/Exception
    //   22	29	46	java/lang/Exception
    //   34	43	46	java/lang/Exception
    //   58	68	46	java/lang/Exception
    //   68	72	75	java/io/IOException
    //   6	15	80	finally
    //   52	56	97	java/io/IOException
    //   91	95	101	java/io/IOException
    //   15	22	106	finally
    //   22	29	106	finally
    //   34	43	106	finally
    //   58	68	106	finally
    //   6	15	110	java/lang/Exception
  }

  // ERROR //
  public static void saveBitmap2File(Bitmap paramBitmap, File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +15 -> 16
    //   4: aload_1
    //   5: invokevirtual 46	java/io/File:exists	()Z
    //   8: ifeq +8 -> 16
    //   11: aload_1
    //   12: invokevirtual 49	java/io/File:delete	()Z
    //   15: pop
    //   16: aconst_null
    //   17: astore_2
    //   18: new 128	java/io/BufferedOutputStream
    //   21: dup
    //   22: new 51	java/io/FileOutputStream
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 52	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   30: invokespecial 131	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   33: astore_3
    //   34: aload_0
    //   35: getstatic 137	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   38: bipush 100
    //   40: aload_3
    //   41: invokevirtual 143	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 146	java/io/BufferedOutputStream:flush	()V
    //   49: aload_3
    //   50: invokevirtual 147	java/io/BufferedOutputStream:close	()V
    //   53: return
    //   54: astore 11
    //   56: aload 11
    //   58: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   61: goto -12 -> 49
    //   64: astore 12
    //   66: aload 12
    //   68: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   71: return
    //   72: astore 4
    //   74: aconst_null
    //   75: astore_3
    //   76: aload 4
    //   78: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   81: aload_3
    //   82: ifnull +7 -> 89
    //   85: aload_3
    //   86: invokevirtual 146	java/io/BufferedOutputStream:flush	()V
    //   89: aload_3
    //   90: ifnull -37 -> 53
    //   93: aload_3
    //   94: invokevirtual 147	java/io/BufferedOutputStream:close	()V
    //   97: return
    //   98: astore 8
    //   100: aload 8
    //   102: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   105: return
    //   106: astore 9
    //   108: aload 9
    //   110: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   113: goto -24 -> 89
    //   116: astore 5
    //   118: aload_2
    //   119: ifnull +7 -> 126
    //   122: aload_2
    //   123: invokevirtual 146	java/io/BufferedOutputStream:flush	()V
    //   126: aload_2
    //   127: ifnull +7 -> 134
    //   130: aload_2
    //   131: invokevirtual 147	java/io/BufferedOutputStream:close	()V
    //   134: aload 5
    //   136: athrow
    //   137: astore 7
    //   139: aload 7
    //   141: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   144: goto -18 -> 126
    //   147: astore 6
    //   149: aload 6
    //   151: invokevirtual 150	java/lang/Exception:printStackTrace	()V
    //   154: goto -20 -> 134
    //   157: astore 5
    //   159: aload_3
    //   160: astore_2
    //   161: goto -43 -> 118
    //   164: astore 4
    //   166: goto -90 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   45	49	54	java/lang/Exception
    //   49	53	64	java/lang/Exception
    //   18	34	72	java/lang/Exception
    //   93	97	98	java/lang/Exception
    //   85	89	106	java/lang/Exception
    //   18	34	116	finally
    //   122	126	137	java/lang/Exception
    //   130	134	147	java/lang/Exception
    //   34	45	157	finally
    //   76	81	157	finally
    //   34	45	164	java/lang/Exception
  }

  public static float widthRetio(int paramInt, File paramFile)
  {
    BitmapFactory.Options localOptions = getFileOption(paramFile);
    float f = 1.0F;
    if (localOptions != null)
    {
      int i = localOptions.outWidth;
      if (paramInt > i)
        f = paramInt / i;
    }
    return f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.FileUtils
 * JD-Core Version:    0.6.2
 */