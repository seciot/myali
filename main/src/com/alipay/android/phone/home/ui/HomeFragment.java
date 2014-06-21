package com.alipay.android.phone.home.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.android.phone.home.manager.HomeAppsItemAdapter;
import com.alipay.android.phone.home.manager.HomeAppsOnItemClickListener;
import com.alipay.android.phone.home.manager.HomeAppsOnItemLongClickListener;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.mobile.commonui.widget.APGridView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.MemoryAppsChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

public class HomeFragment extends APRelativeLayout
  implements APPullRefreshView.RefreshListener, ITopBoardStateCallBack, Observer
{
  public static App c = null;
  protected APLinearLayout a;
  protected APGridView b;
  protected APPullRefreshView d;
  private Context e;
  private HomeAppsItemAdapter f;
  private AppManageService g;
  private Handler h = new Handler(Looper.getMainLooper());
  private BroadcastReceiver i = null;
  private PortraitOverView j = null;
  private MicroApplicationContext k;

  public HomeFragment(Context paramContext)
  {
    super(paramContext);
    this.e = paramContext;
    addView(LayoutInflater.from(paramContext).inflate(R.layout.g, null));
    a();
  }

  public HomeFragment(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.e = paramContext;
    addView(LayoutInflater.from(paramContext).inflate(R.layout.g, null));
    a();
  }

  public HomeFragment(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.e = paramContext;
    addView(LayoutInflater.from(paramContext).inflate(R.layout.g, null));
    a();
  }

  private void a()
  {
    this.a = ((APLinearLayout)findViewById(R.id.Loadable));
    this.b = ((APGridView)findViewById(R.id.i));
    this.d = ((APPullRefreshView)findViewById(R.id.s));
    this.j = ((PortraitOverView)LayoutInflater.from(this.e).inflate(R.layout.l, null));
    this.k = AlipayApplication.getInstance().getMicroApplicationContext();
    this.g = ((AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName()));
    this.a.findViewById(R.id.u).setOnClickListener(new p(this));
    this.a.findViewById(R.id.t).setOnClickListener(new q(this));
    if (this.g != null)
      this.g.addObserver(this);
    for (List localList = this.g.getHomeAppsFromLocal(); ; localList = null)
    {
      this.b.setOnItemClickListener(new HomeAppsOnItemClickListener());
      this.b.setOnItemLongClickListener(new HomeAppsOnItemLongClickListener());
      this.f = new HomeAppsItemAdapter(LayoutInflater.from(this.e), localList);
      this.b.setAdapter(this.f);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.alipay.security.login");
      localIntentFilter.addAction("com.alipay.security.logout");
      localIntentFilter.addAction("com.alipay.security.cleanAccount");
      this.i = new r(this);
      LocalBroadcastManager.getInstance(this.e).registerReceiver(this.i, localIntentFilter);
      this.d.setRefreshListener(this);
      this.d.setEnablePull(false);
      return;
    }
  }

  public boolean canRefresh()
  {
    return true;
  }

  public APOverView getOverView()
  {
    return this.j;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.g != null)
      this.g.removeObserver(this);
    c = null;
    if (this.i != null)
    {
      LocalBroadcastManager.getInstance(this.e).unregisterReceiver(this.i);
      this.i = null;
    }
  }

  public void onHideFinish()
  {
  }

  public void onHideStart()
  {
  }

  public void onRefresh()
  {
    if (this.g != null)
      this.g.upgradeDownloadedApps();
  }

  public void onShowFinish()
  {
  }

  public void onShowStart()
  {
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt == 4)
      c = null;
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
            this.h.post(new v(this, localAppStatusChangeNotify));
        }
        while (localAppStatusChangeNotify.getAction() != 2);
        this.h.post(new w(this, localAppStatusChangeNotify));
        return;
        if (!(paramObject instanceof InstallStatus))
          break;
        localInstallStatus = (InstallStatus)paramObject;
      }
      while (localInstallStatus.getStatus() != 8);
      this.h.post(new u(this, localInstallStatus));
      return;
    }
    while ((!(paramObject instanceof MemoryAppsChangeNotify)) || (this.f == null));
    this.h.post(new t(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.HomeFragment
 * JD-Core Version:    0.6.2
 */