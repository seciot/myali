package com.alipay.mobile.appstoreapp.download;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.content.LocalBroadcastManager;
import android.widget.RemoteViews;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import java.lang.reflect.Field;

public class ExternalDownloadCallback
  implements TransportCallback
{
  private static int a = 1688;
  private int b = 1688;
  private MicroApplicationContext c = AlipayApplication.getInstance().getMicroApplicationContext();
  private Notification d;
  private NotificationManager e = (NotificationManager)this.c.getApplicationContext().getSystemService("notification");
  private int f = 0;
  private DownloadRequest g;
  private LocalBroadcastManager h = LocalBroadcastManager.getInstance(AlipayApplication.getInstance());
  private String i = null;

  public ExternalDownloadCallback(DownloadRequest paramDownloadRequest, String paramString)
  {
    this.g = paramDownloadRequest;
    this.i = paramString;
    if (paramDownloadRequest.isShowRunningNotification())
    {
      if (a > 100000)
        a = 1688;
      int j = a;
      a = j + 1;
      this.b = j;
      NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(this.c.getApplicationContext());
      localBuilder.setTicker("下载" + paramDownloadRequest.getTitle());
      RemoteViews localRemoteViews = new RemoteViews(this.c.getApplicationContext().getPackageName(), a("layout", "download_progress"));
      localRemoteViews.setProgressBar(a("id", "download_process_bar"), 100, 0, false);
      localRemoteViews.setTextViewText(a("id", "download_process_title_txt"), paramDownloadRequest.getTitle());
      Intent localIntent1 = new Intent(this.c.getApplicationContext(), ExternalDownloadIntentService.class);
      localIntent1.putExtra("command", "cancel");
      localIntent1.putExtra("downloadUrl", paramDownloadRequest.getDownloadUrl());
      PendingIntent localPendingIntent1 = PendingIntent.getService(this.c.getApplicationContext(), 1, localIntent1, 268435456);
      localRemoteViews.setOnClickPendingIntent(a("id", "update_cancel_btn"), localPendingIntent1);
      localBuilder.setSmallIcon(a("drawable", "download_icon"));
      this.d = localBuilder.getNotification();
      Intent localIntent2 = new Intent();
      if (Build.VERSION.SDK_INT < 14)
      {
        localIntent2 = new Intent(this.c.getApplicationContext(), ExternalDownloadIntentService.class);
        localIntent2.putExtra("command", "cancel");
        localIntent2.putExtra("downloadUrl", paramDownloadRequest.getDownloadUrl());
        localIntent2.putExtra("request", this.g);
        localIntent2.putExtra("cancelDownloadConfirm", "true");
      }
      PendingIntent localPendingIntent2 = PendingIntent.getService(this.c.getApplicationContext(), 0, localIntent2, 268435456);
      this.d.contentIntent = localPendingIntent2;
      this.d.contentView = localRemoteViews;
    }
  }

  private int a(String paramString1, String paramString2)
  {
    try
    {
      int j = ((Integer)Class.forName(this.c.getApplicationContext().getPackageName() + ".R$" + paramString1).getDeclaredField(paramString2).get(null)).intValue();
      return j;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  private Intent a()
  {
    Intent localIntent = new Intent("com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER");
    localIntent.putExtra("downloadUrl", this.g.getDownloadUrl());
    localIntent.putExtra("downloadRequest", this.g);
    localIntent.putExtra("filePath", this.i);
    return localIntent;
  }

  private void a(int paramInt)
  {
    if ((paramInt - this.f > 2) && (paramInt > 0) && (paramInt < 100))
    {
      Intent localIntent = a();
      localIntent.putExtra("status", "downloading");
      localIntent.putExtra("progress", paramInt);
      a(localIntent);
      if (this.d != null)
      {
        this.d.contentView.setTextViewText(a("id", "progress_text"), paramInt + "%");
        this.d.contentView.setProgressBar(a("id", "download_process_bar"), 100, paramInt, false);
        this.e.notify("DOWNLOAD", this.b, this.d);
        this.f = paramInt;
        new StringBuilder("下载：").append(paramInt).append("%").toString();
      }
    }
  }

  private void a(Intent paramIntent)
  {
    this.h.sendBroadcast(paramIntent);
  }

  private void b()
  {
    if (this.d != null);
    try
    {
      Thread.sleep(3000L);
      label13: this.e.cancel("DOWNLOAD", this.b);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label13;
    }
  }

  public void onCancelled(Request paramRequest)
  {
    Intent localIntent = a();
    localIntent.putExtra("status", "cancel");
    a(localIntent);
    b();
  }

  public void onFailed(Request paramRequest, int paramInt, String paramString)
  {
    new StringBuilder("下载失败:").append(paramString).toString();
    Intent localIntent = a();
    localIntent.putExtra("status", "fail");
    localIntent.putExtra("errorCode", paramInt);
    localIntent.putExtra("errorMsg", paramString);
    a(localIntent);
    if (this.d != null)
      b();
  }

  public void onPostExecute(Request paramRequest, Response paramResponse)
  {
    Intent localIntent = a();
    localIntent.putExtra("status", "finish");
    a(localIntent);
    if (this.d != null)
    {
      this.d.tickerText = "下载完成";
      this.d.contentView.setTextViewText(a("id", "download_process_title_txt"), this.g.getTitle() + "下载完成");
      this.d.contentView.setTextViewText(a("id", "progress_text"), "100%");
      this.d.contentView.setProgressBar(a("id", "download_process_bar"), 100, 100, false);
      this.e.notify("DOWNLOAD", this.b, this.d);
      this.d.flags = 16;
      b();
    }
  }

  public void onPreExecute(Request paramRequest)
  {
    Intent localIntent = a();
    localIntent.putExtra("status", "prepare");
    a(localIntent);
    a(0);
  }

  public void onProgressUpdate(Request paramRequest, double paramDouble)
  {
    a((int)(100.0D * paramDouble));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.download.ExternalDownloadCallback
 * JD-Core Version:    0.6.2
 */