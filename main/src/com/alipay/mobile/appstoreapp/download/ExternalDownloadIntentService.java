package com.alipay.mobile.appstoreapp.download;

import android.app.IntentService;
import android.content.Intent;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.DownloadService;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;

public class ExternalDownloadIntentService extends IntentService
{
  private static Map<String, Future<?>> b = new ConcurrentHashMap();
  private DownloadService a;

  public ExternalDownloadIntentService()
  {
    super("ExternalDownloadIntentService");
  }

  private static void b(String paramString)
  {
    if (paramString != null)
    {
      Future localFuture = (Future)b.get(paramString);
      if ((localFuture != null) && (!localFuture.isDone()))
      {
        localFuture.cancel(false);
        b.remove(paramString);
      }
    }
  }

  public void onCreate()
  {
    super.onCreate();
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    if (localAlipayApplication == null);
    MicroApplicationContext localMicroApplicationContext;
    do
    {
      return;
      localMicroApplicationContext = localAlipayApplication.getMicroApplicationContext();
    }
    while (localMicroApplicationContext == null);
    this.a = ((DownloadService)localMicroApplicationContext.findServiceByInterface(DownloadService.class.getName()));
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("command");
    DownloadRequest localDownloadRequest = (DownloadRequest)paramIntent.getParcelableExtra("request");
    String str4;
    String str5;
    String str6;
    File localFile;
    if ("add".equals(str1))
      if ((localDownloadRequest != null) && (localDownloadRequest.getDownloadUrl() != null))
      {
        String str3 = localDownloadRequest.getDownloadUrl();
        Future localFuture2 = (Future)b.get(str3);
        if ((localFuture2 == null) || (localFuture2.isCancelled()) || (localFuture2.isDone()))
        {
          str4 = localDownloadRequest.getFileName();
          if ((str4 != null) && (!"".equals(str4.trim())))
            break label295;
          str5 = str3.substring(str3.lastIndexOf("/"));
          StringBuilder localStringBuilder = new StringBuilder();
          str6 = DeviceInfo.getInstance().getExternalStoragePath("downloads");
          if ((str6 == null) || (str6.length() == 0))
          {
            AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
            str6 = localAlipayApplication.getCacheDir().getAbsolutePath() + "/downloads/";
            localFile = new File(str6);
            if ((localFile.exists()) || (localFile.mkdir()))
              break label317;
            new StringBuilder("path not exist but fail to create: ").append(str6).toString();
          }
          label231: String str7 = str6 + str5;
          ExternalDownloadCallback localExternalDownloadCallback = new ExternalDownloadCallback(localDownloadRequest, str7);
          Future localFuture3 = this.a.addDownload(str3, str7, null, localExternalDownloadCallback);
          if (localFuture3 != null)
            b.put(str3, localFuture3);
        }
      }
    label295: label317: String str2;
    Future localFuture1;
    do
    {
      boolean bool;
      do
      {
        return;
        str5 = "/" + str4;
        break;
        if (localFile.isDirectory())
          break label231;
        new StringBuilder().append(str6).append(" dir exist,but not directory.").toString();
        str6 = null;
        break label231;
        bool = "true".equals(paramIntent.getStringExtra("cancelDownloadConfirm"));
        str2 = paramIntent.getStringExtra("downloadUrl");
      }
      while ((str2 == null) || (!"cancel".equals(str1)));
      if (!bool)
      {
        b(str2);
        return;
      }
      localFuture1 = (Future)b.get(str2);
    }
    while ((localFuture1 == null) || (localFuture1.isDone()));
    AlipayApplication.getInstance().getMicroApplicationContext().Alert(localDownloadRequest.getTitle(), "取消下载？", "是", new a(this, str2), "否", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.download.ExternalDownloadIntentService
 * JD-Core Version:    0.6.2
 */