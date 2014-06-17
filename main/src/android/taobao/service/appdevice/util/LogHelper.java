package android.taobao.service.appdevice.util;

import android.taobao.service.appdevice.imp.LogImp;

public final class LogHelper
{
  public static void Logd(String paramString1, String paramString2)
  {
    LogImp.getInstance().Logd(paramString1, paramString2);
  }

  public static void Loge(String paramString1, String paramString2)
  {
    LogImp.getInstance().Loge(paramString1, paramString2);
  }

  public static void Logi(String paramString1, String paramString2)
  {
    LogImp.getInstance().Logi(paramString1, paramString2);
  }

  public static void Logv(String paramString1, String paramString2)
  {
    LogImp.getInstance().Logv(paramString1, paramString2);
  }

  public static void Logw(String paramString1, String paramString2)
  {
    LogImp.getInstance().Logw(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.util.LogHelper
 * JD-Core Version:    0.6.2
 */