package com.ut.b;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

public class d
{
  private static final Object ax = new Object();
  private final Object av = new Object();
  private File aw;
  private HashMap<File, d.a> ay = new HashMap();

  public d(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      this.aw = new File(paramString);
      return;
    }
    throw new RuntimeException("Directory can not be empty");
  }

  private File B(String paramString)
  {
    return a(u(), paramString + ".xml");
  }

  private static File a(File paramFile)
  {
    return new File(paramFile.getPath() + ".bak");
  }

  private File a(File paramFile, String paramString)
  {
    if (paramString.indexOf(File.separatorChar) < 0)
      return new File(paramFile, paramString);
    throw new IllegalArgumentException("File " + paramString + " contains a path separator");
  }

  private File u()
  {
    synchronized (this.av)
    {
      File localFile = this.aw;
      return localFile;
    }
  }

  public b b(String paramString, int paramInt)
  {
    File localFile1 = B(paramString);
    d.a locala;
    HashMap localHashMap;
    synchronized (ax)
    {
      locala = (d.a)this.ay.get(localFile1);
      if ((locala != null) && (!locala.w()))
        return locala;
      File localFile2 = a(localFile1);
      if (localFile2.exists())
      {
        localFile1.delete();
        localFile2.renameTo(localFile1);
      }
      if (localFile1.exists())
        localFile1.canRead();
      boolean bool1 = localFile1.exists();
      localHashMap = null;
      if (bool1)
      {
        boolean bool2 = localFile1.canRead();
        localHashMap = null;
        if (!bool2);
      }
    }
    try
    {
      FileInputStream localFileInputStream1 = new FileInputStream(localFile1);
      localHashMap = e.a(localFileInputStream1);
      localFileInputStream1.close();
      label137: Object localObject3 = ax;
      if (locala != null)
      {
        try
        {
          locala.a(localHashMap);
          return locala;
        }
        finally
        {
        }
        localObject2 = finally;
        throw localObject2;
      }
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
      while (true)
      {
        try
        {
          FileInputStream localFileInputStream2 = new FileInputStream(localFile1);
          byte[] arrayOfByte = new byte[localFileInputStream2.available()];
          localFileInputStream2.read(arrayOfByte);
          new String(arrayOfByte, 0, arrayOfByte.length, "UTF-8");
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          localFileNotFoundException2.printStackTrace();
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
        }
        continue;
        locala = (d.a)this.ay.get(localFile1);
        if (locala == null)
        {
          locala = new d.a(localFile1, paramInt, localHashMap);
          this.ay.put(localFile1, locala);
        }
      }
    }
    catch (IOException localIOException1)
    {
      break label137;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      break label137;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.b.d
 * JD-Core Version:    0.6.2
 */