package com.alipay.mobile.nfc.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.nfc.R.drawable;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.mobile.nfc.R.string;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

public class NFCAppDetailActivity extends BaseActivity
  implements View.OnClickListener, Observer
{
  private int a;
  private String b;
  private App c;
  private AppManageService d;
  private APTitleBar e;
  private Button f;
  private View g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private ListView l;
  private ImageView m;
  private Handler n = new Handler(Looper.getMainLooper());

  private void a()
  {
    String str1 = this.c.getAppDesc();
    if (str1.contains("|"))
    {
      this.k.setText(str1.substring(0, str1.indexOf("|")));
      ArrayList localArrayList = new ArrayList();
      String[] arrayOfString1 = str1.substring(1 + str1.indexOf("|")).split("&");
      int i1 = arrayOfString1.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        String[] arrayOfString2 = arrayOfString1[i2].split(":");
        String str2 = arrayOfString2[0];
        String[] arrayOfString3 = arrayOfString2[1].split(",");
        int i3 = arrayOfString3.length;
        for (int i4 = 0; i4 < i3; i4++)
          localArrayList.add(new NFCAppDetailActivity.Phone(this, str2, arrayOfString3[i4]));
      }
      NFCAppDetailActivity.SupportPhoneListAdapter localSupportPhoneListAdapter = new NFCAppDetailActivity.SupportPhoneListAdapter(this, localArrayList);
      this.l.addHeaderView(this.g);
      this.l.setDivider(null);
      this.l.setDividerHeight(0);
      this.l.setAdapter(localSupportPhoneListAdapter);
      return;
    }
    this.k.setText(str1);
    this.l.addHeaderView(this.g);
  }

  private void a(String paramString)
  {
    if ("sub_button_style".equalsIgnoreCase(paramString))
    {
      this.f.setTextColor(getResources().getColor(R.drawable.f));
      this.f.setBackgroundResource(R.drawable.e);
      return;
    }
    this.f.setTextColor(getResources().getColor(R.drawable.c));
    this.f.setBackgroundResource(R.drawable.b);
  }

  private void b()
  {
    this.e.setTitleText(this.c.getAppName());
    this.h.setText(this.c.getAppName());
    this.i.setText(this.c.getAppVersion());
    String str = this.c.getSize() + "KB";
    if (this.c.getSize() > 1024)
      str = String.valueOf(this.c.getSize() / 1024) + "." + 100 * (this.c.getSize() % 1024) / 1024 + "MB";
    this.j.setText(str);
    try
    {
      a();
      label152: if (this.c.isDownloading())
      {
        a("sub_button_style");
        this.f.setText("正在下载…");
        this.f.setEnabled(false);
        return;
      }
      switch (this.a)
      {
      default:
        this.f.setVisibility(8);
        return;
      case 202:
        this.f.setText(getString(R.string.l));
        this.f.setEnabled(true);
        a("main_button_style");
        return;
      case 201:
      }
      this.f.setText(getString(R.string.c));
      this.f.setEnabled(true);
      a("main_button_style");
      return;
    }
    catch (Exception localException)
    {
      break label152;
    }
  }

  public void onClick(View paramView)
  {
    if ((this.c.getAppId() != null) && (AppDao.getDao().getAppByAppId(this.c.getAppId()) == null))
      AppDao.getDao().saveOrUpdateAppEntity(this.c.getAppInfo());
    switch (this.a)
    {
    default:
      a("main_button_style");
      this.f.setEnabled(false);
      this.f.setText("正在下载…");
    case 202:
    }
    while (true)
    {
      new NFCAppDetailActivity.4(this).start();
      return;
      a("main_button_style");
      this.f.setEnabled(false);
      this.f.setText("正在更新…");
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.j);
    this.b = getIntent().getStringExtra("APP_ID");
    this.a = getIntent().getIntExtra("UPGRADE", 201);
    this.d = ((AppManageService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName()));
    this.e = ((APTitleBar)findViewById(R.id.D));
    this.l = ((ListView)findViewById(R.id.z));
    this.f = ((Button)findViewById(R.id.C));
    this.g = LayoutInflater.from(this).inflate(R.layout.k, null);
    this.h = ((TextView)this.g.findViewById(R.id.y));
    this.i = ((TextView)this.g.findViewById(R.id.B));
    this.j = ((TextView)this.g.findViewById(R.id.A));
    this.k = ((TextView)this.g.findViewById(R.id.w));
    this.m = ((ImageView)this.g.findViewById(R.id.x));
    if ((this.b == null) || ("".equals(this.b.trim())))
    {
      finish();
      return;
    }
    this.c = this.d.getAppById(this.b);
    this.f.setOnClickListener(this);
    if (this.c == null)
    {
      this.f.setEnabled(false);
      a("sub_button_style");
      NFCAppDetailActivity.QueryAppDetailAsyncTask localQueryAppDetailAsyncTask = new NFCAppDetailActivity.QueryAppDetailAsyncTask(this, (byte)0);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.b;
      localQueryAppDetailAsyncTask.execute(arrayOfString);
      return;
    }
    this.c.addObserver(this);
    b();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.c != null)
      this.c.deleteObserver(this);
    if (this.d != null)
      this.d.removeObserver(this);
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == null);
    InstallStatus localInstallStatus;
    do
    {
      do
      {
        do
          return;
        while (!(paramObject instanceof InstallStatus));
        localInstallStatus = (InstallStatus)paramObject;
      }
      while ((localInstallStatus.getApp() == null) || (localInstallStatus.getApp().getAppId() == null) || (!localInstallStatus.getApp().getAppId().equalsIgnoreCase(this.b)));
      if ((localInstallStatus.getStatus() == 5) && (localInstallStatus.getApp().isInstallBySystem()))
      {
        this.n.post(new NFCAppDetailActivity.2(this));
        return;
      }
    }
    while (localInstallStatus.getStatus() != 4);
    this.n.post(new NFCAppDetailActivity.3(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCAppDetailActivity
 * JD-Core Version:    0.6.2
 */