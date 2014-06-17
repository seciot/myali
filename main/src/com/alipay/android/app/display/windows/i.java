package com.alipay.android.app.display.windows;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.alipay.android.app.R.string;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.down.FileDownloader;
import com.alipay.android.app.down.FileDownloader.IDownloadProgress;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.script.ILoadingScriptable;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.FileUtils;
import com.alipay.android.app.util.LogUtils;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;

final class i
  implements FileDownloader.IDownloadProgress
{
  private static i a;
  private FileDownloader b;
  private String c;
  private Handler d;
  private WeakReference e;
  private WeakReference f;
  private String g;

  public static boolean a()
  {
    if (a != null)
    {
      if ((a.f != null) && (a.f.get() != null))
        a.e = new WeakReference(((IWindowScriptable)a.f.get()).loading(0));
      a.b.b();
      return true;
    }
    return false;
  }

  public static void b()
  {
    if (a == null)
      return;
    a.b = null;
    a.d = null;
    a.e = null;
    a.c = null;
    a.g = null;
    a.f = null;
    a = null;
  }

  public final void a(float paramFloat)
  {
    if ((this.e != null) && (this.e.get() != null))
      ((ILoadingScriptable)this.e.get()).setText(String.valueOf(paramFloat));
  }

  public final void c()
  {
    if ((this.e != null) && (this.e.get() != null))
      ((ILoadingScriptable)this.e.get()).dismiss();
    try
    {
      String str = "chmod 777 " + this.c;
      Runtime.getRuntime().exec(str);
      Context localContext = GlobalContext.a().b();
      if (!FileUtils.a(localContext, this.c))
      {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setDataAndType(Uri.fromFile(new File(this.c)), "application/vnd.android.package-archive");
        localIntent.addCategory("android.intent.category.DEFAULT");
        localIntent.setFlags(268435456);
        localContext.startActivity(localIntent);
        this.d.postDelayed(new j(this), 150L);
      }
      return;
    }
    catch (IOException localIOException)
    {
      MonitorThread.a().a(localIOException, "install apk");
      LogUtils.a(localIOException);
    }
  }

  public final void d()
  {
    String str1 = GlobalContext.a().b().getString(R.string.r);
    String str2 = this.g;
    Context localContext = GlobalContext.a().b();
    String str3 = localContext.getString(R.string.o);
    String str4 = localContext.getString(17039370);
    String str5;
    if (!"must".equals(str2))
      str5 = EventType.t.a();
    for (String str6 = localContext.getString(17039360); ; str6 = localContext.getString(R.string.t))
    {
      if ((this.f != null) && (this.f.get() != null))
        ((IWindowScriptable)this.f.get()).confirm(EventType.q.a(), str5, str3, str1, null, str4, str6);
      return;
      str5 = EventType.s.a();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.i
 * JD-Core Version:    0.6.2
 */