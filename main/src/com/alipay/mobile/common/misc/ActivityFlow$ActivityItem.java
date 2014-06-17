package com.alipay.mobile.common.misc;

import android.app.Activity;
import java.lang.ref.WeakReference;

public class ActivityFlow$ActivityItem
{
  protected WeakReference<Activity> actRef;
  protected String key;

  public ActivityFlow$ActivityItem(ActivityFlow paramActivityFlow)
  {
  }

  public Activity getActivity()
  {
    return (Activity)this.actRef.get();
  }

  public String getKey()
  {
    return this.key;
  }

  public void setActivity(Activity paramActivity)
  {
    this.actRef = new WeakReference(paramActivity);
  }

  public void setKey(String paramString)
  {
    this.key = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ActivityFlow.ActivityItem
 * JD-Core Version:    0.6.2
 */