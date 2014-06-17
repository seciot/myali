package com.alipay.mobile.discoverycommon.api.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class CreateDynamicCodeService extends ExternalService
{
  public static final int UPDATE_ALL = 7;
  public static final int UPDATE_DBARCODE = 1;
  public static final int UPDATE_DQRCODE = 2;
  public static final int UPDATE_DWAVE = 4;

  public abstract String getAltText(Object paramObject);

  public abstract Bitmap getBitmap(Object paramObject);

  public abstract String getDynamicCode();

  public abstract String getDynamicCodeWithPassId();

  public abstract void init(Context paramContext, Handler paramHandler, int paramInt);

  protected void onCreate(Bundle paramBundle)
  {
  }

  public abstract void onDestroy();

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public abstract void onPause();

  public abstract void onRefresh();

  public abstract void onResume();

  public abstract void setHandler(Handler paramHandler);

  public abstract void setPassId(String paramString);

  public abstract void startGetDynamicCode(Object paramObject);

  public abstract void update(String paramString1, Object paramObject, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService
 * JD-Core Version:    0.6.2
 */