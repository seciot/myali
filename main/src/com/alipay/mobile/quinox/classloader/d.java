package com.alipay.mobile.quinox.classloader;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

import android.os.Build;

import com.alipay.mobile.quinox.bundle.AppBundle;

import dalvik.system.DexFile;

public final class d extends ClassLoader
  implements Dependable
{
  private AppBundle a;
  private BootstrapClassloader b;
  private DexFile c;
  private File[] d;
  private ZipFile e;
  private File f;

  public d(BootstrapClassloader parama, AppBundle parama1, String paramString1, String paramString2, ClassLoader paramClassLoader)
  {
    super(paramClassLoader);
    this.a = parama1;
    this.b = parama;
    try
    {
      String str;
      if ((Build.HARDWARE.toLowerCase().contains("mt6592")) && (parama1.getBundlePath().endsWith(".so")))
      {
        str = b.v(parama1.getBundlePath(), paramString1).replace("plugins_opt", "plugins").replace(".dex", ".jar");
        File localFile = new File(str);
        if (!localFile.exists())
        {
          BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(parama1.getBundlePath()));
          c.v(localBufferedInputStream, localFile);
          localBufferedInputStream.close();
        }
      }
      for (this.c = DexFile.loadDex(str, b.v(parama1.getBundlePath(), paramString1), 0); ; this.c = DexFile.loadDex(parama1.getBundlePath(), b.v(parama1.getBundlePath(), paramString1), 0))
      {
        this.e = new ZipFile(parama1.getBundlePath());
        this.f = new File(parama1.getBundlePath());
        this.d = a(paramString2);
        return;
      }
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  private static File[] a(String paramString)
  {
    String[] arrayOfString = paramString.split(Pattern.quote(File.pathSeparator));
    File[] arrayOfFile = new File[arrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
      arrayOfFile[i] = new File(arrayOfString[i]);
    return arrayOfFile;
  }

  public final String findLibrary(String paramString)
  {
    String str = System.mapLibraryName(paramString);
    File[] arrayOfFile = this.d;
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++)
    {
      File localFile = new File(arrayOfFile[j], str);
      if ((localFile.exists()) && (localFile.isFile()) && (localFile.canRead()))
        return localFile.getPath();
    }
    return null;
  }

  public final URL findResource(String paramString)
  {
    if ((this.e == null) || (this.e.getEntry(paramString) == null))
      return null;
    try
    {
      URL localURL = new URL("jar:" + this.f.toURL() + "!/" + paramString);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new RuntimeException(localMalformedURLException);
    }
  }

  protected final Enumeration findResources(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(findResource(paramString));
    return Collections.enumeration(localArrayList);
  }

  public final Set getDepends()
  {
    String[] arrayOfString = this.a.getRequireBundleName();
    HashSet localHashSet = new HashSet();
    if (arrayOfString != null)
    {
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfString[j];
        if ((str != null) && (str.length() > 0))
        {
          Dependable localh = this.b.b(str.split("@")[0]);
          if (localh != null)
            localHashSet.add(localh);
        }
      }
    }
    return localHashSet;
  }

  protected final Package getPackage(String paramString)
  {
    Object localObject1 = null;
    if (paramString != null);
    try
    {
      boolean bool = paramString.isEmpty();
      localObject1 = null;
      if (!bool)
      {
        localObject1 = super.getPackage(paramString);
        if (localObject1 == null)
        {
          Package localPackage = definePackage(paramString, "Unknown", "0.0", "Unknown", "Unknown", "0.0", "Unknown", null);
          localObject1 = localPackage;
        }
      }
      return localObject1;
    }
    finally
    {
    }
  }

  public final Class loadClass(String paramString)
  {
    com.alipay.mobile.quinox.utils.ZLog.i("BundleClassloader", Thread.currentThread().getName() + ":" + this + " loadClass: " + paramString);
    Class localClass = this.c.loadClass(paramString, this);
    if (localClass == null)
    {
      com.alipay.mobile.quinox.utils.ZLog.i("BundleClassloader", Thread.currentThread().getName() + ":" + this + " loadClass from depends: " + paramString);
      localClass = a.v(paramString, getDepends());
      if (localClass == null)
        throw new ClassNotFoundException(this + " can,t find class: " + paramString);
    }
    return localClass;
  }

  public final Class loadClassFromCurrent(String paramString)
  {
    com.alipay.mobile.quinox.utils.ZLog.i("BundleClassloader", Thread.currentThread().getName() + ":" + this + " loadClassFromCurrent: " + paramString);
    Class localClass = this.c.loadClass(paramString, this);
    if (localClass == null)
      throw new ClassNotFoundException(this + " can,t find class: " + paramString);
    return localClass;
  }

  public final String toString()
  {
    return "BundleClassloader[" + this.c.getName() + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.d
 * JD-Core Version:    0.6.2
 */