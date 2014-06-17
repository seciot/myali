package com.alipay.mobile.alipassapp.a;

import android.content.Context;
import java.io.File;

public final class b
{
  public static String a(Context paramContext, String paramString)
  {
    File localFile = b(paramContext, paramString);
    if (localFile == null)
      localFile = new File(paramContext.getCacheDir().getPath() + File.separator + paramString);
    return localFile.getAbsolutePath() + File.separator;
  }

  public static void a(File paramFile)
  {
    if ((paramFile.exists()) && (paramFile.isDirectory()))
      if (paramFile.listFiles().length == 0)
        paramFile.delete();
    while ((!paramFile.exists()) || (paramFile.isDirectory()))
    {
      return;
      File[] arrayOfFile = paramFile.listFiles();
      int i = paramFile.listFiles().length;
      for (int j = 0; j < i; j++)
      {
        if (arrayOfFile[j].isDirectory())
          a(arrayOfFile[j]);
        arrayOfFile[j].delete();
      }
      paramFile.delete();
      return;
    }
    paramFile.delete();
  }

  private static File b(Context paramContext, String paramString)
  {
    try
    {
      File localFile1 = paramContext.getCacheDir();
      File localFile2 = new File(localFile1 + File.separator + paramString);
      if (!localFile2.exists())
        localFile2.mkdirs();
      return localFile2;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.a.b
 * JD-Core Version:    0.6.2
 */