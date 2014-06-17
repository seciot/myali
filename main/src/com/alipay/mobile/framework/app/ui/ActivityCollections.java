package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import com.alipay.mobile.common.logging.LogCatLog;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ActivityCollections
{
  private static volatile ActivityCollections a;
  private Map<String, ActivityCollections.ActivityRef> b = new HashMap();

  public static ActivityCollections createInstance()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new ActivityCollections();
      return a;
    }
    finally
    {
    }
  }

  public static void destroy()
  {
    try
    {
      Iterator localIterator;
      if (a != null)
      {
        Collection localCollection = a.b.values();
        if ((localCollection != null) && (!localCollection.isEmpty()))
          localIterator = localCollection.iterator();
      }
      while (true)
      {
        if (!localIterator.hasNext())
        {
          a.b.clear();
          return;
        }
        Activity localActivity = (Activity)((ActivityCollections.ActivityRef)localIterator.next()).get();
        if ((localActivity != null) && (!localActivity.isFinishing()))
          localActivity.finish();
      }
    }
    finally
    {
    }
  }

  public static ActivityCollections getInstance()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new ActivityCollections();
      return a;
    }
    finally
    {
    }
  }

  public void recordActivity(Activity paramActivity)
  {
    if (paramActivity != null);
    try
    {
      String str = paramActivity.toString();
      LogCatLog.v("ActivityCollections", "recordActivity(key=" + str + ")");
      if (!this.b.containsKey(str))
        this.b.put(str, new ActivityCollections.ActivityRef(this, paramActivity));
      LogCatLog.v("ActivityCollections", "size=" + this.b.size() + this.b.toString());
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.ActivityCollections
 * JD-Core Version:    0.6.2
 */