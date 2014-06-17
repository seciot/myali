package com.alipay.mobile.framework.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Stack;

public abstract class ActivityApplication extends MicroApplication
{
  static final String TAG = ActivityApplication.class.getSimpleName();
  private Stack<WeakReference<Activity>> a = new Stack();
  private boolean b = false;

  public final void create(Bundle paramBundle)
  {
    new StringBuilder("microapplication: ").append(getAppId()).append("  create.").toString();
    onCreate(paramBundle);
  }

  public final void destroy(Bundle paramBundle)
  {
    new StringBuilder("microapplication: ").append(getAppId()).append("  destroy.").toString();
    while (true)
    {
      WeakReference localWeakReference;
      if (!this.a.isEmpty())
      {
        localWeakReference = (WeakReference)this.a.pop();
        if (localWeakReference != null);
      }
      else
      {
        getMicroApplicationContext().onDestroyContent(this);
        super.destroy(paramBundle);
        return;
      }
      Activity localActivity = (Activity)localWeakReference.get();
      if ((localActivity != null) && (!localActivity.isFinishing()))
        localActivity.finish();
    }
  }

  public Activity findActivityByHashcode(int paramInt)
  {
    Iterator localIterator = this.a.iterator();
    Activity localActivity;
    do
    {
      if (!localIterator.hasNext())
        return null;
      localActivity = (Activity)((WeakReference)localIterator.next()).get();
    }
    while ((localActivity == null) || (localActivity.hashCode() != paramInt));
    return localActivity;
  }

  public Activity getTopActivity()
  {
    if (this.a.isEmpty())
      return null;
    return (Activity)((WeakReference)this.a.peek()).get();
  }

  public final void pushActivity(Activity paramActivity)
  {
    if ((!this.a.isEmpty()) && (((WeakReference)this.a.peek()).get() == null))
      this.a.pop();
    WeakReference localWeakReference = new WeakReference(paramActivity);
    this.a.push(localWeakReference);
    LogCatLog.v(TAG, "pushActivity(): " + paramActivity.getComponentName().getClassName());
  }

  public void removeActivity(Activity paramActivity)
  {
    Iterator localIterator = this.a.iterator();
    Object localObject;
    if (!localIterator.hasNext())
      localObject = null;
    while (true)
    {
      this.a.remove(localObject);
      new StringBuilder("remove Activity:").append(paramActivity.getClass().getName()).toString();
      if ((this.a.isEmpty()) && (!this.b))
        destroy(null);
      return;
      localObject = (WeakReference)localIterator.next();
      if ((((WeakReference)localObject).get() == null) || (((WeakReference)localObject).get() != paramActivity))
        break;
    }
  }

  public final void restart(Bundle paramBundle)
  {
    new StringBuilder("microapplication: ").append(getAppId()).append("  restart.").toString();
    onRestart(paramBundle);
  }

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
    int i = 0;
    int j = paramSharedPreferences.getInt(getAppId() + ".stack", 0);
    while (true)
    {
      if (i >= j)
        return;
      this.a.push(new WeakReference(null));
      i++;
    }
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
    paramEditor.putInt(getAppId() + ".stack", this.a.size());
  }

  public void setIsPrevent(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final void start()
  {
    String str = getEntryClassName();
    if (str != null);
    try
    {
      getMicroApplicationContext().startActivity(this, str);
      new StringBuilder("microapplication: ").append(getAppId()).append("  start.").toString();
      onStart();
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      throw new AppLoadException(localActivityNotFoundException);
    }
  }

  public final void stop()
  {
    new StringBuilder("microapplication: ").append(getAppId()).append("  stop.").toString();
    onStop();
  }

  public void windowFocus()
  {
    getMicroApplicationContext().onWindowFocus(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ActivityApplication
 * JD-Core Version:    0.6.2
 */