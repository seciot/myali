package com.alipay.mobile.longlink.a;

import android.content.Context;
import java.io.File;

public abstract class b
{
  private static final String b = com.alipay.mobile.longlink.c.AppBundle.a(BundlesManager.class);
  private static String c = "longlink";
  protected String a = "";
  private Context d;

  public b(Context paramContext)
  {
    this.d = paramContext;
  }

  protected final String a()
  {
    String str1 = this.d.getFilesDir().getPath() + "/";
    String str2 = str1 + c + File.separatorChar;
    com.alipay.mobile.longlink.c.AppBundle.a(4, BundlesManager, "getMsgDir() strPush=" + str2);
    new File(str1).mkdir();
    new File(str2).mkdir();
    return str2;
  }

  public abstract void a(String paramString);

  public abstract boolean a(AppBundle parama);

  public abstract void b(AppBundle parama);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.a.b
 * JD-Core Version:    0.6.2
 */