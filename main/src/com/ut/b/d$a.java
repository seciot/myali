package com.ut.b;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

final class d$a
  implements b
{
  private static final Object aE = new Object();
  private final File aA;
  private final int aB;
  private Map aC;
  private boolean aD = false;
  private WeakHashMap<b.b, Object> aF;
  private final File az;

  d$a(File paramFile, int paramInt, Map paramMap)
  {
    this.az = paramFile;
    this.aA = d.b(paramFile);
    this.aB = paramInt;
    if (paramMap != null);
    while (true)
    {
      this.aC = paramMap;
      this.aF = new WeakHashMap();
      return;
      paramMap = new HashMap();
    }
  }

  private FileOutputStream c(File paramFile)
  {
    try
    {
      FileOutputStream localFileOutputStream1 = new FileOutputStream(paramFile);
      return localFileOutputStream1;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      if (!paramFile.getParentFile().mkdir())
        return null;
      try
      {
        FileOutputStream localFileOutputStream2 = new FileOutputStream(paramFile);
        return localFileOutputStream2;
      }
      catch (FileNotFoundException localFileNotFoundException2)
      {
      }
    }
    return null;
  }

  private boolean x()
  {
    if (this.az.exists())
      if (!this.aA.exists())
        if (this.az.renameTo(this.aA))
          break label44;
    while (true)
    {
      return false;
      this.az.delete();
      try
      {
        label44: FileOutputStream localFileOutputStream = c(this.az);
        if (localFileOutputStream == null)
          continue;
        e.a(this.aC, localFileOutputStream);
        localFileOutputStream.close();
        this.aA.delete();
        return true;
      }
      catch (IOException localIOException)
      {
        if (!this.az.exists())
          continue;
        this.az.delete();
        return false;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        label84: break label84;
      }
    }
  }

  public final void a(Map paramMap)
  {
    if (paramMap != null);
    try
    {
      this.aC = paramMap;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.aD = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Map<String, ?> getAll()
  {
    try
    {
      HashMap localHashMap = new HashMap(this.aC);
      return localHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long getLong(String paramString, long paramLong)
  {
    try
    {
      Long localLong = (Long)this.aC.get(paramString);
      if (localLong != null)
        paramLong = localLong.longValue();
      return paramLong;
    }
    finally
    {
    }
  }

  public final String getString(String paramString1, String paramString2)
  {
    try
    {
      String str = (String)this.aC.get(paramString1);
      if (str != null);
      while (true)
      {
        return str;
        str = paramString2;
      }
    }
    finally
    {
    }
  }

  public final boolean p()
  {
    return (this.az != null) && (new File(this.az.getAbsolutePath()).exists());
  }

  public final b.a q()
  {
    return new d.a.a(this);
  }

  public final boolean w()
  {
    try
    {
      boolean bool = this.aD;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.b.d.a
 * JD-Core Version:    0.6.2
 */