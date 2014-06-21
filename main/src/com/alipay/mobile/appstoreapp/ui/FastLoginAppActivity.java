package com.alipay.mobile.appstoreapp.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.alipay.mobile.appstoreapp.adapter.FastLoginAppAdapter;
import com.alipay.mobile.appstoreapp.adapter.FastLoginAppAdapterCallback;
import com.alipay.mobile.appstoreapp.adapter.FastLoginAppOnItemClickListener;
import com.alipay.mobile.appstoreapp.biz.AppsDataBiz;
import com.alipay.mobile.appstoreapp.biz.AppsDataBizImpl;
import com.alipay.mobile.appstoreapp.common.Page;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.persist.FastLoginAppDao;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.openplatform.R.id;
import com.alipay.mobile.openplatform.R.layout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

public class FastLoginAppActivity extends BaseActivity
  implements FastLoginAppAdapterCallback, Observer
{
  private static final String b = FastLoginAppActivity.class.getName();
  boolean a = false;
  private AppsDataBiz c;
  private AppManageService d;
  private boolean e = true;
  private APListView f;
  private FastLoginAppAdapter g;
  private Page<App> h;
  private int i = 1;
  private int j = 20;

  private static List<App> a(List<App> paramList)
  {
    int k = paramList.size();
    int m = 0;
    int n = 0;
    if (m < k)
    {
      if (!((App)paramList.get(m)).isInstalled())
        break label72;
      paramList.add(n, paramList.get(m));
      paramList.remove(m + 1);
    }
    label72: for (int i1 = n + 1; ; i1 = n)
    {
      m++;
      n = i1;
      break;
      return paramList;
    }
  }

  public final boolean a()
  {
    return this.e;
  }

  public final void b()
  {
    new q(this).execute(new String[0]);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ZLog);
    this.d = ((AppManageService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName()));
    this.d.addObserver(this);
    this.c = new AppsDataBizImpl(this.mApp, this.d);
    this.f = ((APListView)findViewById(R.id.m));
    this.g = new FastLoginAppAdapter(this, this.f, this.mApp);
    this.g.a(this);
    this.f.setAdapter(this.g);
    this.f.setOnItemClickListener(new FastLoginAppOnItemClickListener(this, this.mApp));
    FastLoginAppAdapter localFastLoginAppAdapter = this.g;
    List localList = this.d.getThirdAppsFromLocal();
    ArrayList localArrayList1 = new ArrayList();
    if (localList == null);
    for (ArrayList localArrayList2 = new ArrayList(); ; localArrayList2 = localArrayList1)
    {
      localFastLoginAppAdapter.a(a(localArrayList2));
      this.a = AlipayApplication.getInstance().getApplicationContext().getSharedPreferences("FastLoginFirstTimeFlag", 0).getBoolean("FastLoginFirstTimeFlag", true);
      new q(this).execute(new String[0]);
      return;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        App localApp = (App)localIterator.next();
        if ((localApp.isInstalled()) && (!localApp.isOffline()) && (localApp.isDisplay()))
          localArrayList1.add(localApp);
        else
          FastLoginAppDao.getDao().removeFastLoginById(localApp.getAppId());
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.d != null)
      this.d.removeObserver(this);
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    try
    {
      if ((paramObject instanceof InstallStatus))
      {
        InstallStatus localInstallStatus = (InstallStatus)paramObject;
        if (localInstallStatus.getStatus() == 8)
        {
          this.g.a(localInstallStatus.getApp());
          this.g.a();
        }
        if (localInstallStatus.getStatus() == 2)
          this.g.notifyDataSetChanged();
        if (localInstallStatus.getStatus() == 4)
          this.g.notifyDataSetChanged();
        if (localInstallStatus.getStatus() == 5)
          this.g.notifyDataSetChanged();
      }
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.FastLoginAppActivity
 * JD-Core Version:    0.6.2
 */