package com.alipay.mobile.common.logagent;

import android.content.Context;
import com.alipay.mobile.common.transport.http.legacy.HttpClient;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;

public class LogSendManager
{
  private static void a(Context paramContext)
  {
    String str1 = LogBaseHelper.readFile(paramContext, "/logs/userlog.log");
    try
    {
      HttpResponse localHttpResponse = new HttpClient(LogUtil.getStatisticsUrl(paramContext), paramContext).sendGZipSynchronousRequest(str1);
      Object localObject1 = Constants.lock;
      if (localHttpResponse != null);
      try
      {
        String str2 = EntityUtils.toString(localHttpResponse.getEntity());
        new StringBuilder("logsend response ==> ").append(str2).toString();
        int i = str2.indexOf("logSwitch=");
        if (i > 0)
          if (str2.substring(i + 10).compareTo("false") != 0)
            break label121;
        label121: for (Constants.LOG_SWITCH = false; ; Constants.LOG_SWITCH = true)
        {
          LogBaseHelper.fileClean(paramContext, "/logs/userlog.log");
          Constants.LOG_ACCOUNT = 0;
          Constants.LAST_SEND_TIME = System.currentTimeMillis();
          return;
        }
      }
      finally
      {
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void checkAndSend(Context paramContext)
  {
    synchronized (Constants.lock)
    {
      Constants.LOG_ACCOUNT = 1 + Constants.LOG_ACCOUNT;
      long l = System.currentTimeMillis() - Constants.LAST_SEND_TIME;
      new StringBuilder("logSwitch:").append(Constants.LOG_SWITCH).append(" log count:").append(Constants.LOG_ACCOUNT).append(" send log duration:").append(l).toString();
      if ((Constants.LOG_SWITCH) && (Constants.LOG_ACCOUNT >= 50) && (l >= 60000L))
        a(paramContext);
      return;
    }
  }

  public static void uploadLog(Context paramContext)
  {
    new LogSendManager.UploadLogThread(paramContext).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.LogSendManager
 * JD-Core Version:    0.6.2
 */