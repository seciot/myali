package com.alipay.mobile.about.ui;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.KeyEvent;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APExtTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.Date;
import java.util.List;

@EActivity
public class AboutMainActivity extends BaseActivity
{
  private APTextView a;
  private APTextView b;
  private APTableView c;
  private APExtTableView d;
  private APTableView e;
  private APTableView f;
  private WidgetMsgFlag g;
  private com.alipay.mobile.about.a.a h;

  @Background
  protected void a()
  {
    try
    {
      showProgressDialog("");
      a(this.h.a());
      return;
    }
    catch (Exception localException)
    {
      dismissProgressDialog();
      localException.getMessage();
    }
  }

  @UiThread
  protected void a(ClientUpdateCheckRes paramClientUpdateCheckRes)
  {
    dismissProgressDialog();
    if (paramClientUpdateCheckRes != null)
    {
      if (paramClientUpdateCheckRes != null)
        break label20;
      this.g.hideMsgFlag();
    }
    label20: 
    do
    {
      return;
      if ((paramClientUpdateCheckRes != null) && (paramClientUpdateCheckRes.getResultStatus() != 201));
      for (int i = 1; i != 0; i = 0)
      {
        this.g.showMsgFlagNew();
        return;
      }
    }
    while (paramClientUpdateCheckRes.getResultStatus() != 201);
    this.g.hideMsgFlag();
    this.d.setClickable(false);
    this.d.setArrowImageVisibility(8);
    this.d.setRightText("已是最新版");
    this.d.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
  }

  public final void b()
  {
    new com.alipay.mobile.about.service.a(this.mMicroApplicationContext).execute(new Object[0]);
  }

  public final void c()
  {
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, AboutTheVersionActivity.class.getName());
  }

  public final void d()
  {
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, FeedAssistantActivity_.class.getName());
  }

  public final void e()
  {
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getApplicationContext().getPackageName())));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.U);
    this.a = ((APTextView)findViewById(R.id.k));
    this.b = ((APTextView)findViewById(R.id.ZLog));
    this.c = ((APTableView)findViewById(R.id.Loadable));
    this.d = ((APExtTableView)findViewById(R.id.BundlesManagerImpl));
    this.e = ((APTableView)findViewById(R.id.g));
    this.f = ((APTableView)findViewById(R.id.i));
    this.g = new WidgetMsgFlag(this);
    this.d.attachNewFlag2LeftText(this.g);
    String str1 = AppInfo.getInstance().getmProductVersion();
    String str2 = getPackageName();
    new StringBuilder("getPackageName ").append(str2).toString();
    if ((str2 == null) || (!str2.contains("RC")))
      str1 = str1.substring(0, str1.indexOf(".", 2));
    this.a.setText(getText(R.string.m) + " " + str1);
    String str3 = String.valueOf(getText(R.string.DefaultThreadFactory));
    String str4 = String.valueOf(DateFormat.format("yyyy", new Date()));
    if (Integer.parseInt(str4) < 2014)
      str4 = "2014";
    String str5 = str3.replace("#endYear", str4);
    this.b.setText(str5);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getApplicationContext().getPackageName()));
    List localList = getApplication().getPackageManager().queryIntentActivities(localIntent, 1);
    if ((localList == null) || (localList.size() == 0))
    {
      this.c.setVisibility(8);
      this.e.setType(18);
    }
    this.c.setOnClickListener(new g(this));
    this.d.setOnClickListener(new h(this));
    this.e.setOnClickListener(new i(this));
    this.f.setOnClickListener(new j(this));
    this.h = new com.alipay.mobile.about.a.a();
    a();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, this.mApp.getAppId(), "moreHome", "aboutIndex", "backIcon");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.AboutMainActivity
 * JD-Core Version:    0.6.2
 */