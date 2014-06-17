package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class ActivityCollections$ActivityRef extends WeakReference<Activity>
{
  public ActivityCollections$ActivityRef(ActivityCollections paramActivityCollections, Activity paramActivity)
  {
    super(paramActivity);
  }

  public ActivityCollections$ActivityRef(Activity paramActivity, ReferenceQueue<? super Activity> paramReferenceQueue)
  {
    super(paramReferenceQueue, localReferenceQueue);
  }

  public String toString()
  {
    if (get() != null)
      return ((Activity)get()).toString();
    return super.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.ActivityCollections.ActivityRef
 * JD-Core Version:    0.6.2
 */