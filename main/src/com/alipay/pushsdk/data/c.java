package com.alipay.pushsdk.data;

import android.content.Context;
import java.io.File;

public abstract class c
{
  private static final String a = com.alipay.pushsdk.c.a.c.getBundle(c.class);
  private static String b = "push/";
  private static String c = "msg/";
  private Context d;

  public c(Context paramContext)
  {
    this.d = paramContext;
  }

  public abstract String a();

  public abstract void a(String paramString);

  public abstract boolean a(NotifierInfo paramNotifierInfo);

  protected final String b()
  {
    String str1 = this.d.getFilesDir().getPath() + "/";
    String str2 = str1 + b;
    String str3 = str2 + c;
    com.alipay.pushsdk.c.a.c.a(4, a, "getMsgDir() strRoot=" + str1);
    new File(str1).mkdir();
    new File(str2).mkdir();
    new File(str3).mkdir();
    return str3;
  }

  public abstract void b(NotifierInfo paramNotifierInfo);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.data.c
 * JD-Core Version:    0.6.2
 */