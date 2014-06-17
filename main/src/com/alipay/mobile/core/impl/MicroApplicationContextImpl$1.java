package com.alipay.mobile.core.impl;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import com.alipay.mobile.framework.app.ui.ActivityCollections;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

class MicroApplicationContextImpl$1
  implements Application.ActivityLifecycleCallbacks
{
  MicroApplicationContextImpl$1(MicroApplicationContextImpl paramMicroApplicationContextImpl)
  {
  }

  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    String str = paramActivity.getClass().getSimpleName();
    if ((!(paramActivity instanceof BaseActivity)) && (!(paramActivity instanceof BaseFragmentActivity)))
    {
      new StringBuilder("Debug Mode Warnning: ").append(str).append(" is not a subclass of BaseActivity or BaseFragmentActivity.").toString();
      ActivityCollections.getInstance().recordActivity(paramActivity);
    }
  }

  public void onActivityDestroyed(Activity paramActivity)
  {
  }

  public void onActivityPaused(Activity paramActivity)
  {
  }

  public void onActivityResumed(Activity paramActivity)
  {
  }

  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
  }

  public void onActivityStarted(Activity paramActivity)
  {
  }

  public void onActivityStopped(Activity paramActivity)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.impl.MicroApplicationContextImpl.1
 * JD-Core Version:    0.6.2
 */