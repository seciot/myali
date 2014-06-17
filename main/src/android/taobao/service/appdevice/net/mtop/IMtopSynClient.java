package android.taobao.service.appdevice.net.mtop;

import android.content.Context;

public abstract interface IMtopSynClient
{
  public abstract Result getV3(Context paramContext, MtopRequest paramMtopRequest);

  public abstract void setBaseUrl(String paramString);

  public abstract void setDefaultAppSecret(String paramString);

  public abstract void setDefaultAppkey(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.IMtopSynClient
 * JD-Core Version:    0.6.2
 */