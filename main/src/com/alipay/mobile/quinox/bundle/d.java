package com.alipay.mobile.quinox.bundle;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Log;
import com.alipay.mobile.quinox.LauncherApplication;
import com.alipay.mobile.quinox.utils.c;
import com.alipay.mobile.quinox.utils.e;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

public final class d
{
  private static final X500Principal a = new X500Principal("CN=Android Debug,O=Android,C=US");
  private Context b;
  private b c;
  private Signature[] d;
  private boolean e;

  public d(Context paramContext, b paramb)
  {
    this.b = paramContext;
    this.c = paramb;
  }

  private void a(Map paramMap, Set paramSet, boolean paramBoolean)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      paramMap.remove(locala.c());
      locala.m();
      if (paramBoolean)
      {
        c.a(locala.f());
        c.a(com.alipay.mobile.quinox.utils.b.a(locala.f(), this.c.c()));
        Log.e("BundleVerifier", locala.c() + "deleted jar.");
        try
        {
          this.c.j().a(locala.c());
        }
        catch (Exception localException)
        {
          Log.e("BundleVerifier", locala.c() + " delete ", localException);
        }
      }
    }
  }

  private void c()
  {
    Iterator localIterator = this.c.b();
    HashSet localHashSet = new HashSet();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (locala.f() == null);
      for (boolean bool = false; ; bool = new File(locala.f()).exists())
      {
        if ((this.c.b(locala.c())) && (!bool))
          break label126;
        if (bool)
          break label128;
        Log.e("BundleVerifier", "jar file deleted: " + locala.c());
        localHashSet.add(locala);
        break;
      }
      label126: continue;
      label128: if ((!this.e) && (!locala.a(this.d)))
      {
        Log.e("BundleVerifier", "verify sign error: " + locala.c());
        localHashSet.add(locala);
      }
    }
    if (localHashSet.size() > 0)
    {
      a(this.c.f(), localHashSet, true);
      throw new Exception("verify sign error: " + e.a(localHashSet));
    }
  }

  private Signature[] d()
  {
    try
    {
      Signature[] arrayOfSignature = this.b.getPackageManager().getPackageInfo(this.b.getPackageName(), 64).signatures;
      return arrayOfSignature;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("BundleVerifier", "get  signature error ", localNameNotFoundException);
    }
    return null;
  }

  public final void a()
  {
    this.d = d();
    Signature[] arrayOfSignature = this.d;
    if (arrayOfSignature == null);
    while (true)
    {
      return;
      try
      {
        CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
        for (int i = 0; i < arrayOfSignature.length; i++)
        {
          this.e = ((X509Certificate)localCertificateFactory.generateCertificate(new ByteArrayInputStream(arrayOfSignature[i].toByteArray()))).getSubjectX500Principal().equals(a);
          boolean bool = this.e;
          if (bool)
            break;
        }
      }
      catch (CertificateException localCertificateException)
      {
        Log.e("BundleVerifier", "init  signature error ", localCertificateException);
      }
    }
  }

  public final void a(Map paramMap, boolean paramBoolean)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramMap.values().iterator();
    label268: label342: label346: 
    while (localIterator.hasNext())
    {
      a locala1 = (a)localIterator.next();
      if (locala1.j() != null)
      {
        String[] arrayOfString1 = locala1.j();
        int i = arrayOfString1.length;
        for (int j = 0; ; j++)
        {
          String str1;
          String str3;
          a locala2;
          while (true)
          {
            if (j >= i)
              break label346;
            str1 = arrayOfString1[j];
            if ((str1 == null) || (str1.trim().length() <= 0))
              break label342;
            String[] arrayOfString2 = str1.split("@");
            try
            {
              String str2 = arrayOfString2[0];
              str3 = arrayOfString2[1];
              if ((this.c.b(str2)) || (str1.contains("-quinox")))
                break label342;
              locala2 = (a)paramMap.get(str2);
              if ((locala2 != null) && (!localHashSet.contains(locala2)))
                break label268;
              Log.e("BundleVerifier", locala1.e() + "'s dependencies error: can't find" + str1);
              localHashSet.add(locala1);
            }
            catch (Exception localException)
            {
              Log.e("BundleVerifier", locala1.e() + "'s verifyDependencies" + str1, localException);
              localHashSet.add(locala1);
            }
          }
          break;
          if (e.a(str3, locala2.k()))
          {
            Log.e("BundleVerifier", locala1.e() + "'s dependencies error:" + str1 + "->" + locala2.e());
            localHashSet.add(locala1);
            break;
          }
        }
      }
    }
    if (localHashSet.size() > 0)
    {
      a(paramMap, localHashSet, paramBoolean);
      a(paramMap, paramBoolean);
      throw new Exception("verify dependencies error: " + e.a(localHashSet));
    }
  }

  public final boolean b()
  {
    boolean bool = true;
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      c();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          a(this.c.f(), true);
          if (localStringBuffer.length() > 0)
          {
            ((LauncherApplication)this.b).LogError(new Exception(localStringBuffer.toString()), "MonitorPoint_DynamicLoad_StartErr");
            bool = false;
          }
          return bool;
          localException1 = localException1;
          localStringBuffer.append(localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        while (true)
          localStringBuffer.append(localException2.getMessage());
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.bundle.d
 * JD-Core Version:    0.6.2
 */