package com.alipay.mobile.appstoreapp.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.service.ext.download.DownloadCallback;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ExternalDownloadStatusReceiver extends BroadcastReceiver
{
  private static Map<String, List<DownloadCallback>> callbackData = new ConcurrentHashMap();

  public static boolean isDownloadTaskExists(String paramString)
  {
    if (paramString == null)
      return false;
    List localList = (List)callbackData.get(paramString);
    return (localList != null) && (localList.size() > 0);
  }

  public static void registerCallback(String paramString, DownloadCallback paramDownloadCallback)
  {
    Object localObject;
    if ((paramString != null) && (paramDownloadCallback != null))
    {
      if (!callbackData.containsKey(paramString))
        break label86;
      if (callbackData.get(paramString) != null)
        break label70;
      localObject = new ArrayList();
    }
    while (true)
    {
      callbackData.put(paramString, localObject);
      if (!((List)localObject).contains(paramDownloadCallback))
        ((List)localObject).add(paramDownloadCallback);
      return;
      label70: localObject = (List)callbackData.get(paramString);
      continue;
      label86: localObject = new ArrayList();
    }
  }

  private static void unRegisterCallbacks(String paramString)
  {
    callbackData.remove(paramString);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("downloadUrl");
    if (str1 != null);
    for (List localList = (List)callbackData.get(str1); ; localList = null)
    {
      if (localList == null);
      DownloadRequest localDownloadRequest;
      String str2;
      do
      {
        while (true)
        {
          return;
          localDownloadRequest = (DownloadRequest)paramIntent.getParcelableExtra("downloadRequest");
          str2 = paramIntent.getStringExtra("status");
          if ("prepare".equals(str2))
          {
            Iterator localIterator5 = localList.iterator();
            while (localIterator5.hasNext())
              ((DownloadCallback)localIterator5.next()).onPrepare(localDownloadRequest);
          }
          else
          {
            if (!"downloading".equals(str2))
              break;
            int j = paramIntent.getIntExtra("progress", 0);
            Iterator localIterator4 = localList.iterator();
            while (localIterator4.hasNext())
              ((DownloadCallback)localIterator4.next()).onProgress(localDownloadRequest, j);
          }
        }
        if ("finish".equals(str2))
        {
          String str4 = paramIntent.getStringExtra("filePath");
          Iterator localIterator3 = localList.iterator();
          while (localIterator3.hasNext())
            ((DownloadCallback)localIterator3.next()).onFinish(localDownloadRequest, str4);
          unRegisterCallbacks(str1);
          return;
        }
        if ("fail".equals(str2))
        {
          String str3 = paramIntent.getStringExtra("errorMsg");
          int i = paramIntent.getIntExtra("errorCode", 0);
          Iterator localIterator2 = localList.iterator();
          while (localIterator2.hasNext())
            ((DownloadCallback)localIterator2.next()).onFailed(localDownloadRequest, i, str3);
          unRegisterCallbacks(str1);
          return;
        }
      }
      while (!"cancel".equals(str2));
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
        ((DownloadCallback)localIterator1.next()).onCancel(localDownloadRequest);
      unRegisterCallbacks(str1);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.download.ExternalDownloadStatusReceiver
 * JD-Core Version:    0.6.2
 */