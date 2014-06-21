package com.alipay.mobile.appstoreapp.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.appstoreapp.app.AppStoreApp;
import com.alipay.mobile.appstoreapp.biz.AppsDataBiz;
import com.alipay.mobile.appstoreapp.biz.AppsDataBizImpl;
import com.alipay.mobile.appstoreapp.util.AppStoreUtil;
import com.alipay.mobile.appstoreapp.util.IconLoadHelper;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao;
import com.alipay.mobile.framework.service.ext.openplatform.persist.FastLoginAppDao;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.openplatform.R.id;
import com.alipay.mobile.openplatform.R.layout;
import com.alipay.mobile.openplatform.R.string;
import com.alipay.mobile.ui.R.drawable;
import java.util.Observable;
import java.util.Observer;

public class AppDetailActivity extends BaseActivity
  implements View.OnClickListener, Observer
{
  private String a;
  private AppsDataBiz b;
  private App c;
  private String d;
  private String e;
  private AppManageService f;
  private boolean g = true;
  private APTitleBar h;
  private APButton i;
  private APTextView j;
  private APTextView k;
  private APTextView l;
  private APTextView m;
  private APImageView n;
  private Handler o = new Handler(Looper.getMainLooper());
  private Bundle p;

  private void a()
  {
    this.h.setTitleText(this.c.getAppName());
    this.j.setText(this.c.getAppName());
    this.k.setText(this.c.getAppVersion());
    this.l.setText(AppStoreUtil.a(this.c.getSize()));
    this.m.setText(this.c.getAppDesc());
    if (this.c.iconHasLoaded())
    {
      StateListDrawable localStateListDrawable = IconLoadHelper.a(this.c.getIcon(), this.c.isAlipayApp());
      this.n.setImageDrawable(localStateListDrawable);
    }
    while (this.c.isDownloading())
    {
      a("main_button_style");
      this.i.setText(getString(R.string.ZLog));
      this.i.setEnabled(false);
      return;
      this.c.loadIcon(new a(this));
    }
    if (!this.c.isInstalled())
    {
      this.i.setEnabled(true);
      this.i.setText(getString(R.string.BundlesManagerImpl));
      a("main_button_style");
      return;
    }
    if (this.c.isNeedUpgrade())
    {
      this.i.setEnabled(true);
      this.i.setText(getString(R.string.j));
      a("main_button_style");
      return;
    }
    this.i.setEnabled(true);
    this.i.setText(getString(R.string.i));
    a("main_button_style");
  }

  private void a(String paramString)
  {
    if ("sub_button_style".equalsIgnoreCase(paramString))
    {
      this.i.setTextColor(getResources().getColor(R.drawable.subsub_btn_color));
      this.i.setBackgroundResource(R.drawable.sub_button_sub);
      return;
    }
    this.i.setTextColor(getResources().getColor(R.drawable.main_button_color));
    this.i.setBackgroundResource(R.drawable.main_button);
  }

  private void b()
  {
    if ((this.c.getAppId() != null) && (AppDao.getDao().getAppByAppId(this.c.getAppId()) == null))
    {
      AppDao.getDao().saveOrUpdateAppEntity(this.c.getAppInfo());
      FastLoginAppDao.getDao().addToFastLogin(this.c.getAppId());
    }
    if (!this.c.isInstalled())
    {
      a("main_button_style");
      this.i.setEnabled(false);
      this.i.setText(getString(R.string.ZLog));
      new f(this).start();
      return;
    }
    if (this.c.isNeedUpgrade())
    {
      a("main_button_style");
      this.i.setEnabled(false);
      this.i.setText(getString(R.string.k));
      new h(this).start();
      return;
    }
    this.c.authAndLaunch(null);
    finish();
  }

  public void onClick(View paramView)
  {
    b();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.BundlesManagerImpl);
    this.a = getIntent().getStringExtra("APP_ID");
    if ((this.a == null) && (this.mApp != null) && ((this.mApp instanceof AppStoreApp)))
    {
      this.p = ((AppStoreApp)this.mApp).getStartParams();
      if ((this.p != null) && (this.p.getString("APP_ID") != null))
      {
        this.a = this.p.getString("APP_ID");
        this.d = this.p.getString("ACTION");
        this.e = this.p.getString("TARGET");
      }
    }
    this.f = ((AppManageService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName()));
    this.f.addObserver(this);
    this.b = new AppsDataBizImpl(this.mApp, this.f);
    this.h = ((APTitleBar)findViewById(R.id.i));
    this.j = ((APTextView)findViewById(R.id.ZLog));
    this.k = ((APTextView)findViewById(R.id.g));
    this.l = ((APTextView)findViewById(R.id.e));
    this.m = ((APTextView)findViewById(R.id.BundlesManager));
    this.i = ((APButton)findViewById(R.id.Dependable));
    this.n = ((APImageView)findViewById(R.id.BundlesManagerImpl));
    if ((this.a == null) || ("".equals(this.a.trim())))
      finish();
    do
    {
      return;
      this.c = this.b.a(this.a);
      this.i.setOnClickListener(this);
      if (this.c == null)
      {
        j localj = new j(this, (byte)0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.a;
        localj.execute(arrayOfString);
        return;
      }
      a();
    }
    while ((this.d == null) || (!this.d.equalsIgnoreCase("UPGRADE")));
    b();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.f != null)
      this.f.removeObserver(this);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.g)
      this.g = false;
    while (this.c == null)
      return;
    a();
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == null);
    AppStatusChangeNotify localAppStatusChangeNotify;
    do
    {
      do
      {
        InstallStatus localInstallStatus;
        do
        {
          do
          {
            do
            {
              return;
              if (!(paramObject instanceof InstallStatus))
                break;
              localInstallStatus = (InstallStatus)paramObject;
            }
            while ((localInstallStatus.getApp() == null) || (localInstallStatus.getApp().getAppId() == null) || (!localInstallStatus.getApp().getAppId().equalsIgnoreCase(this.a)));
            if ((localInstallStatus.getStatus() == 5) && (localInstallStatus.getApp().isInstallBySystem()))
            {
              this.o.post(new c(this));
              return;
            }
            if (localInstallStatus.getStatus() == 4)
            {
              this.o.post(new d(this));
              return;
            }
            if (localInstallStatus.getStatus() != 7)
              break;
            this.i.setEnabled(true);
            if (!this.c.isInstalled())
            {
              this.i.setText(getString(R.string.BundlesManagerImpl));
              a("main_button_style");
              return;
            }
          }
          while (!this.c.isNeedUpgrade());
          this.i.setText(getString(R.string.j));
          a("main_button_style");
          return;
        }
        while (localInstallStatus.getStatus() != 8);
        this.o.postDelayed(new e(this), 500L);
        return;
      }
      while (!(paramObject instanceof AppStatusChangeNotify));
      localAppStatusChangeNotify = (AppStatusChangeNotify)paramObject;
    }
    while ((localAppStatusChangeNotify.getApp() == null) || (localAppStatusChangeNotify.getApp().getAppId() == null) || (!localAppStatusChangeNotify.getApp().getAppId().equalsIgnoreCase(this.a)) || (localAppStatusChangeNotify.getAction() != 1) || (localAppStatusChangeNotify.getApp() == null) || (this.c == null) || (!this.c.getAppId().equalsIgnoreCase(localAppStatusChangeNotify.getApp().getAppId())));
    this.c = localAppStatusChangeNotify.getApp();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.AppDetailActivity
 * JD-Core Version:    0.6.2
 */