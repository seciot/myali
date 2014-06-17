package com.alipay.mobile.rome.pushservice.adapter.service;

import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.rome.pushservice.PushSettingService;
import com.alipay.pushsdk.AliPushInterface;

public class PushSettingServiceImpl extends PushSettingService
{
  public static final String TAG = PushSettingServiceImpl.class.getSimpleName();

  public String getPushState()
  {
    String str = "true";
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    if (localMicroApplicationContext != null)
    {
      str = AliPushInterface.getPushState(localMicroApplicationContext.getApplicationContext());
      new StringBuilder("getPushState() PushSwitch=").append(str).toString();
    }
    return str;
  }

  protected void onCreate(Bundle paramBundle)
  {
    a locala = new a(this);
    new Handler().postDelayed(locala, 10000L);
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void setPushState(String paramString)
  {
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    if (localMicroApplicationContext != null)
    {
      AliPushInterface.setPushState(localMicroApplicationContext.getApplicationContext(), paramString);
      new StringBuilder("setPushState() PushSwitch=").append(paramString).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.adapter.service.PushSettingServiceImpl
 * JD-Core Version:    0.6.2
 */