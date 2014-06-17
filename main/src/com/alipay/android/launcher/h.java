package com.alipay.android.launcher;

import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.FragmentTransaction;
import java.util.Map;

final class h
  implements ActionBar.TabListener
{
  private h(TabLauncher paramTabLauncher)
  {
  }

  public final void onTabReselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
  }

  public final void onTabSelected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    if (TabLauncher.b(this.a) != null)
      this.a.onTabChanged((String)TabLauncher.d(this.a).get(Integer.valueOf(paramTab.getPosition())));
  }

  public final void onTabUnselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.h
 * JD-Core Version:    0.6.2
 */