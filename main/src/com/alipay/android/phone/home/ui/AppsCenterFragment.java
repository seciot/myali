package com.alipay.android.phone.home.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.view.LayoutInflater;
import com.alipay.android.phone.home.manager.AppCenterItemAdapter;
import com.alipay.android.phone.home.manager.AppCenterOnItemClickListener;
import com.alipay.android.phone.home.manager.AppCenterOnItemLongClickListener;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.commonui.widget.APGridView;
import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.MemoryAppsChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

@EFragment(resName="applications_center")
public class AppsCenterFragment extends Fragment
  implements APPullRefreshView.RefreshListener, Observer
{
  public static App b = null;

  @ViewById(resName="appscenter_apps_grid")
  protected APGridView a;

  @ViewById(resName="pull_refresh_container")
  protected APPullRefreshView c;
  private String d = "ApplicationsCenter";
  private AppCenterItemAdapter e;
  private AppManageService f;
  private PortraitOverView g = null;
  private Handler h = new Handler(Looper.getMainLooper());

  @AfterViews
  protected void afterView()
  {
    if (this.f != null)
      this.f.addObserver(this);
    for (List localList = this.f.getAppCenterAppsFromLocal(); ; localList = null)
    {
      this.a.setOnItemClickListener(new AppCenterOnItemClickListener());
      this.a.setOnItemLongClickListener(new AppCenterOnItemLongClickListener());
      this.e = new AppCenterItemAdapter(LayoutInflater.from(getActivity()), localList);
      this.a.setAdapter(this.e);
      this.g = ((PortraitOverView)LayoutInflater.from(getActivity()).inflate(R.layout.l, null));
      this.c.setRefreshListener(this);
      this.c.setEnablePull(false);
      Intent localIntent = new Intent();
      localIntent.setAction("com.alipay.mobile.android.main.appcenterinited");
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance()).sendBroadcast(localIntent);
      return;
    }
  }

  public boolean canRefresh()
  {
    return true;
  }

  public APOverView getOverView()
  {
    return this.g;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    LogCatLog.e("AppsCenterFragment", "onCreate");
    if ((paramBundle != null) && (paramBundle.containsKey("AppsCenterFragment:Content")))
      this.d = paramBundle.getString("AppsCenterFragment:Content");
    this.f = ((AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName()));
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    if (this.f != null)
      this.f.removeObserver(this);
    b = null;
  }

  public void onPause()
  {
    super.onPause();
    b = null;
  }

  public void onRefresh()
  {
  }

  public void onResume()
  {
    super.onResume();
    if (this.f != null)
      this.f.upgradeDownloadedApps();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("AppsCenterFragment:Content", this.d);
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == null);
    do
    {
      InstallStatus localInstallStatus;
      do
      {
        AppStatusChangeNotify localAppStatusChangeNotify;
        do
        {
          return;
          if (!(paramObject instanceof AppStatusChangeNotify))
            break;
          localAppStatusChangeNotify = (AppStatusChangeNotify)paramObject;
          if (localAppStatusChangeNotify.getAction() == 1)
            this.h.post(new c(this, localAppStatusChangeNotify));
        }
        while (localAppStatusChangeNotify.getAction() != 3);
        this.h.post(new d(this, localAppStatusChangeNotify));
        return;
        if (!(paramObject instanceof InstallStatus))
          break;
        localInstallStatus = (InstallStatus)paramObject;
      }
      while (localInstallStatus.getStatus() != 8);
      this.h.post(new b(this, localInstallStatus));
      return;
    }
    while ((!(paramObject instanceof MemoryAppsChangeNotify)) || (this.e == null));
    this.h.post(new a(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.AppsCenterFragment
 * JD-Core Version:    0.6.2
 */