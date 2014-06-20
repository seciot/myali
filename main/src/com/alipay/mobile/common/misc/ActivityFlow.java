package com.alipay.mobile.common.misc;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

public class ActivityFlow
{
  private List<ActivityFlow.ActivityItem> a = new ArrayList();

  public int getSize()
  {
    return this.a.size();
  }

  public Activity pop()
  {
    int i = this.a.size();
    if (i > 0)
    {
      Activity localActivity = ((ActivityFlow.ActivityItem)this.a.removeBundle(i - 1)).getActivity();
      if (localActivity != null)
        localActivity.finish();
      return localActivity;
    }
    return null;
  }

  public void popAll()
  {
    for (int i = -1 + this.a.size(); i >= 0; i--)
    {
      Activity localActivity = ((ActivityFlow.ActivityItem)this.a.get(i)).getActivity();
      if (localActivity != null)
        localActivity.finish();
    }
    this.a.clear();
  }

  public void popTo(String paramString)
  {
    for (int i = -1 + this.a.size(); i >= 0; i--)
    {
      ActivityFlow.ActivityItem localActivityItem = (ActivityFlow.ActivityItem)this.a.removeBundle(i);
      Activity localActivity = localActivityItem.getActivity();
      if (localActivity != null)
        localActivity.finish();
      if ((localActivityItem != null) && (paramString.equals(localActivityItem.getKey())))
        break;
    }
  }

  public void push(String paramString, Activity paramActivity)
  {
    ActivityFlow.ActivityItem localActivityItem = new ActivityFlow.ActivityItem(this);
    localActivityItem.setKey(paramString);
    localActivityItem.setActivity(paramActivity);
    this.a.add(localActivityItem);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ActivityFlow
 * JD-Core Version:    0.6.2
 */