package com.alipay.android.phone.home.manager;

import android.content.Context;
import android.view.LayoutInflater;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.mobile.commonui.widget.APFrameLayout;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import java.util.Observable;
import java.util.Observer;

public class AppItemView extends APFrameLayout
  implements Observer
{
  private App a;

  public AppItemView(Context paramContext)
  {
    super(paramContext);
    addView(LayoutInflater.from(paramContext).inflate(R.layout.f, null));
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null)
      this.a.deleteObserver(this);
  }

  public void setApp(App paramApp)
  {
    if (this.a != null)
      this.a.deleteObserver(this);
    this.a = paramApp;
    if (this.a != null)
      this.a.addObserver(this);
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == null);
    InstallStatus localInstallStatus;
    ViewHolder localViewHolder;
    App localApp;
    boolean bool;
    do
    {
      do
      {
        do
          return;
        while (!(paramObject instanceof InstallStatus));
        localInstallStatus = (InstallStatus)paramObject;
        localViewHolder = (ViewHolder)getTag();
      }
      while (localViewHolder == null);
      localApp = localInstallStatus.getApp();
      bool = localApp.isInstalled();
    }
    while ((localApp == null) || (localApp.getAppId() == null) || (localApp.getAppId().equals("")) || (this.a == null) || (this.a.getAppId() == null) || (this.a.getAppId().equals("")) || (!this.a.getAppId().equals(localApp.getAppId())));
    post(new f(this, localInstallStatus, localViewHolder, bool));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.AppItemView
 * JD-Core Version:    0.6.2
 */