package android.taobao.service.appdevice;

import android.content.Context;

public abstract interface IAppDeviceTokenManager
{
  public abstract void clear(Context paramContext, String paramString);

  public abstract String getAppDeviceToken(Context paramContext, String paramString);

  public abstract String getAppDeviceToken(Context paramContext, String paramString1, String paramString2);

  public abstract void setAppTTID(Context paramContext, String paramString1, String paramString2);

  public abstract void setDeviceUTDID(Context paramContext, String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.IAppDeviceTokenManager
 * JD-Core Version:    0.6.2
 */