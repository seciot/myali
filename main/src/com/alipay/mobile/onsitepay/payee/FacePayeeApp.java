package com.alipay.mobile.onsitepay.payee;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.lang.ref.WeakReference;

public class FacePayeeApp extends ActivityApplication
{
  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    Activity localActivity = (Activity)getMicroApplicationContext().getTopActivity().get();
    if (localActivity != null)
    {
      Intent localIntent = new Intent(localActivity, FacePayeeActivity_.class);
      getMicroApplicationContext().startActivity(this, localIntent);
    }
  }

  protected void onStart()
  {
    getMicroApplicationContext().startActivity(this, FacePayeeActivity_.class.getName());
    AuthService localAuthService = (AuthService)getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (!localAuthService.isLogin())
    {
      BackgroundExecutor.execute(new s(this, localAuthService, new Handler()));
      return;
    }
    getMicroApplicationContext().startActivity(this, FacePayeeActivity_.class.getName());
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.FacePayeeApp
 * JD-Core Version:    0.6.2
 */