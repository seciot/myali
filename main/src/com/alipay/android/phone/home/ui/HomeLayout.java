package com.alipay.android.phone.home.ui;

import android.app.Activity;
import android.view.View;
import com.alipay.android.launcher.core.IWidget;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class HomeLayout
  implements IWidget
{
  private HomeFragment a = null;

  public HomeLayout(Activity paramActivity)
  {
    this.a = new HomeFragment(paramActivity);
  }

  public static void a()
  {
  }

  public View getView()
  {
    return this.a;
  }

  public void onRefresh()
  {
    if (this.a != null)
      this.a.onRefresh();
  }

  public void setActivityApplication(ActivityApplication paramActivityApplication)
  {
  }

  public void setContext(Activity paramActivity)
  {
  }

  public void setContext(MicroApplicationContext paramMicroApplicationContext)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.HomeLayout
 * JD-Core Version:    0.6.2
 */