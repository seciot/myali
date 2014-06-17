package android.taobao.service.appdevice.imp;

import android.taobao.service.appdevice.i.ILog;
import android.util.Log;

public class LogImp
  implements ILog
{
  private static LogImp a;
  private static boolean b = true;

  public static LogImp getInstance()
  {
    if (a == null)
      a = new LogImp();
    return a;
  }

  public void Logd(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (b))
      Log.d(paramString1, paramString2);
  }

  public void Loge(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (b))
      Log.e(paramString1, paramString2);
  }

  public void Logi(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (b))
      Log.i(paramString1, paramString2);
  }

  public void Logv(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (b))
      Log.v(paramString1, paramString2);
  }

  public void Logw(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (b))
      Log.w(paramString1, paramString2);
  }

  public boolean getLogStatus()
  {
    return b;
  }

  public void setLogSwitcher(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.imp.LogImp
 * JD-Core Version:    0.6.2
 */