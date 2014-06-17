package com.alipay.mobile.about.service;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.download.DownloadCallback;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import java.lang.ref.WeakReference;

final class l
  implements DownloadCallback
{
  l(UpdateServicesImpl paramUpdateServicesImpl, boolean paramBoolean, MicroApplicationContext paramMicroApplicationContext)
  {
  }

  private static void a(MicroApplicationContext paramMicroApplicationContext)
  {
    try
    {
      if ((paramMicroApplicationContext.getTopActivity() != null) && (paramMicroApplicationContext.getTopActivity().get() != null))
        paramMicroApplicationContext.dismissProgressDialog();
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  private static void a(boolean paramBoolean, MicroApplicationContext paramMicroApplicationContext)
  {
    if (paramBoolean)
    {
      paramMicroApplicationContext.exit();
      System.exit(0);
    }
  }

  public final void onCancel(DownloadRequest paramDownloadRequest)
  {
    a.a = false;
    a(this.a, this.b);
  }

  public final void onFailed(DownloadRequest paramDownloadRequest, int paramInt, String paramString)
  {
    a.a = false;
    a(this.b);
  }

  public final void onFinish(DownloadRequest paramDownloadRequest, String paramString)
  {
    a.a = false;
    if (paramString != null)
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setFlags(268435456);
      localIntent.setDataAndType(Uri.parse("file://" + paramString), "application/vnd.android.package-archive");
      AlipayApplication.getInstance().getApplicationContext().startActivity(localIntent);
    }
    a(this.a, this.b);
    a(this.b);
  }

  public final void onPrepare(DownloadRequest paramDownloadRequest)
  {
  }

  public final void onProgress(DownloadRequest paramDownloadRequest, int paramInt)
  {
    a.a = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.l
 * JD-Core Version:    0.6.2
 */