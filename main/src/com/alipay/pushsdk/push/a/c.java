package com.alipay.pushsdk.push.a;

import java.io.File;
import javax.net.SocketFactory;

public final class c
  implements Cloneable
{
  protected com.alipay.pushsdk.push.AppBundle.a.BundlesManagerImpl a;
  private String b;
  private String c;
  private int d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = true;
  private boolean r = AppBundle.a;
  private boolean s = true;
  private SocketFactory t;
  private boolean u = true;
  private d v = d.BundlesManager;

  public c(String paramString, int paramInt, com.alipay.pushsdk.push.AppBundle.a.BundlesManagerImpl paramc)
  {
    this.c = paramString;
    this.d = paramInt;
    this.b = paramString;
    this.a = paramc;
    String str = System.getProperty("java.home");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str).append(File.separator).append("lib");
    localStringBuilder.append(File.separator).append("security");
    localStringBuilder.append(File.separator).append("cacerts");
    this.e = localStringBuilder.toString();
    this.f = "jks";
    this.g = "changeit";
    this.h = System.getProperty("javax.net.ssl.keyStore");
    this.i = "jks";
    this.j = "pkcs11.config";
    this.t = paramc.d();
  }

  public final String a()
  {
    return this.c;
  }

  public final void a(d paramd)
  {
    this.v = paramd;
  }

  public final int b()
  {
    return this.d;
  }

  public final com.alipay.pushsdk.push.AppBundle.a.BundlesManagerImpl getBundleName()
  {
    return this.a;
  }

  public final d d()
  {
    return this.v;
  }

  public final void e()
  {
    this.p = false;
  }

  public final void f()
  {
    this.q = false;
  }

  public final SocketFactory g()
  {
    return this.t;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.c
 * JD-Core Version:    0.6.2
 */