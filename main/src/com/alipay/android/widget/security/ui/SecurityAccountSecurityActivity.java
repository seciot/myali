package com.alipay.android.widget.security.ui;

import android.content.BroadcastReceiver;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.clientsecurity.R.color;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.QihooGuardService;
import com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@EActivity(resName="security_accountsecurity")
public class SecurityAccountSecurityActivity extends BaseActivity
  implements View.OnClickListener
{
  private static final Integer v = Integer.valueOf(1);
  private static final Integer w = Integer.valueOf(1);
  private static final Integer x = Integer.valueOf(2);
  private boolean A;
  private ConfigService B;
  private List<String> C;
  private List<String> D;
  private HashMap<String, APTableView> E;

  @ViewById(resName="modifyPayPassword")
  protected APTableView a;

  @ViewById(resName="getPayPassword")
  protected APTableView b;

  @ViewById(resName="modifyLoginPassword")
  protected APTableView c;

  @ViewById(resName="loginLog")
  protected APTableView d;

  @ViewById(resName="rapidLostReport")
  protected APTableView e;

  @ViewById(resName="authorizationManager")
  protected APTableView f;

  @ViewById(resName="deviceManager")
  protected APTableView g;

  @ViewById(resName="operationRecord")
  protected APTableView h;

  @ViewById(resName="smsGuard")
  protected APTableView i;

  @ViewById(resName="security_pay_illustration_link")
  protected APTextView j;

  @ViewById(resName="lastScore")
  protected APTextView k;

  @ViewById(resName="levelScore")
  protected APTextView l;

  @ViewById(resName="securityLevel")
  protected APRelativeLayout m;
  protected AccountService n;
  protected AuthService o;
  protected String p = "";
  UserInfo q;
  protected LocalBroadcastManager r;
  protected BroadcastReceiver s;
  protected BroadcastReceiver t;
  DialogInterface.OnClickListener u = new SecurityAccountSecurityActivity.3(this);
  private final String y = "change login password end";
  private SecurityLevel z = null;

  private String a(int paramInt)
  {
    return getResources().getString(paramInt);
  }

  private void a(APTableView paramAPTableView, int paramInt)
  {
    if (paramAPTableView != null)
    {
      paramAPTableView.setType(paramInt);
      if ((16 == paramInt) || (17 == paramInt))
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramAPTableView.getLayoutParams();
        localLayoutParams.topMargin = ((int)ExtViewUtil.convertDpToPixel(14.0F, this));
        paramAPTableView.setLayoutParams(localLayoutParams);
      }
    }
  }

  private void c()
  {
    int i1 = this.D.size();
    int i2 = 0;
    if (i2 < this.D.size())
    {
      if (i1 == 1)
        a((APTableView)this.E.get(this.D.get(i2)), 16);
      while (true)
      {
        if (this.E.get(this.D.get(i2)) != null)
          ((APTableView)this.E.get(this.D.get(i2))).setVisibility(0);
        i2++;
        break;
        if (i1 == 2)
        {
          if (i2 == 0)
            a((APTableView)this.E.get(this.D.get(i2)), 17);
          else
            a((APTableView)this.E.get(this.D.get(i2)), 18);
        }
        else if (i1 > 2)
          if (i2 == 0)
            a((APTableView)this.E.get(this.D.get(i2)), 17);
          else if (i2 == i1 - 1)
            a((APTableView)this.E.get(this.D.get(i2)), 18);
          else
            a((APTableView)this.E.get(this.D.get(i2)), 19);
      }
    }
  }

  @Background
  protected void a()
  {
    this.q = this.o.getUserInfo();
    if ((!this.o.isLogin()) || (this.q == null))
    {
      if (this.o.auth(new Bundle()))
        this.q = this.o.getUserInfo();
    }
    else
      a(this.q);
  }

  @UiThread
  protected void a(UserInfo paramUserInfo)
  {
    if ((paramUserInfo != null) && (paramUserInfo.isWirelessUser()))
    {
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      this.c.setVisibility(8);
    }
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 1);
  }

  @AfterViews
  protected final void b()
  {
    if (isFinishing())
      return;
    a();
    this.d.setVisibility(8);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
    this.h.setVisibility(8);
    this.i.setVisibility(8);
    this.g.setVisibility(8);
    this.C.add("Security_RapidLostReport");
    this.C.add("Security_ShowDeviceManagement");
    this.C.add("Security_AccountAuthorizeManage");
    this.C.add("Security_SmsGuard");
    this.E.put("Security_RapidLostReport", this.e);
    this.E.put("Security_ShowDeviceManagement", this.g);
    this.E.put("Security_AccountAuthorizeManage", this.f);
    this.E.put("Security_SmsGuard", this.i);
    QihooGuardService.isQihooGuardOpened();
    try
    {
      Iterator localIterator = this.C.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((this.B.getConfig(str) != null) && ("YES".equals(this.B.getConfig(str))))
          this.D.add(str);
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("获取动态配置页面异常").append(localException.getMessage()).toString();
      c();
      this.a.setOnClickListener(this);
      this.b.setOnClickListener(this);
      this.c.setOnClickListener(this);
      this.d.setOnClickListener(this);
      this.e.setOnClickListener(this);
      this.f.setOnClickListener(this);
      this.h.setOnClickListener(this);
      this.g.setOnClickListener(this);
      this.i.setOnClickListener(this);
      this.m.setOnClickListener(this);
      this.j.setOnClickListener(this);
    }
  }

  @Background
  protected void b(String paramString)
  {
    try
    {
      new StringBuilder("onPostRefreshWidget loginId: ").append(paramString).toString();
      if (!SecurityUtil.a(paramString))
      {
        this.z = SecurityDbHelper.getInstance(this.mApp.getMicroApplicationContext().getApplicationContext()).findSecurityLevel(paramString);
        this.A = getSharedPreferences("examinationSetting", 0).getBoolean(paramString, false);
      }
      c(paramString);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  @UiThread
  protected void c(String paramString)
  {
    if (SecurityUtil.a(paramString))
    {
      this.k.setVisibility(8);
      this.l.setVisibility(8);
      return;
    }
    if (this.A)
    {
      if (this.z != null)
      {
        new StringBuilder("getView score: ").append(this.z.getScore()).toString();
        int i1 = this.z.getScore();
        this.k.setVisibility(0);
        this.l.setVisibility(0);
        if (i1 == 100);
        for (int i2 = getResources().getColor(R.color.b); ; i2 = getResources().getColor(R.color.d))
        {
          String str = i1 + getResources().getString(R.string.cp);
          SpannableString localSpannableString = new SpannableString(str);
          localSpannableString.setSpan(new ForegroundColorSpan(i2), 0, str.length(), 34);
          this.l.setText(localSpannableString);
          return;
        }
      }
      this.k.setVisibility(8);
      this.l.setVisibility(8);
      return;
    }
    this.k.setVisibility(8);
    this.l.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 == R.id.bP)
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "accountLoginLogView", "accountSecurityIndex", "accountLogin");
    try
    {
      Bundle localBundle3 = new Bundle();
      localBundle3.putString("launchType", "loginLogsWelcome");
      this.mApp.getMicroApplicationContext().startApp("", "20000055", localBundle3);
      do
      {
        return;
        if (i1 == R.id.dc)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "quickReportLossIndex", "accountSecurityIndex", "quickReportLoss");
          try
          {
            this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000068", null);
            return;
          }
          catch (AppLoadException localAppLoadException8)
          {
            return;
          }
        }
        if (i1 == R.id.O)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "accountAuthorizationView", "accountSecurityIndex", "accountAuthorization");
          try
          {
            Bundle localBundle2 = new Bundle();
            localBundle2.putString("launchType", "manage");
            this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000055", localBundle2);
            return;
          }
          catch (AppLoadException localAppLoadException7)
          {
            a(getResources().getString(R.string.c));
            return;
          }
        }
        if (i1 == R.id.cG)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "accountOperationLogView", "accountSecurityIndex", "accountOperation");
          try
          {
            Bundle localBundle1 = new Bundle();
            localBundle1.putString("launchType", "authorizeLogs");
            this.mApp.getMicroApplicationContext().startApp("", "20000055", localBundle1);
            return;
          }
          catch (AppLoadException localAppLoadException6)
          {
            return;
          }
        }
        if (i1 == R.id.fI)
        {
          this.mApp.getMicroApplicationContext().startApp(null, "20000117", null);
          return;
        }
        if (i1 == R.id.cm)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "modifyPayPwdView", "accountSecurityIndex", "modifyPayPwd");
          try
          {
            this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000016", null);
            return;
          }
          catch (AppLoadException localAppLoadException5)
          {
            a(getResources().getString(R.string.c));
            return;
          }
        }
        if (i1 == R.id.bn)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "foundPayPwdView", "accountSecurityIndex", "foundPayPwd");
          UserInfo localUserInfo = this.o.getUserInfo();
          if ((localUserInfo != null) && (TextUtils.isEmpty(localUserInfo.getMobileNumber())))
          {
            alert(null, getResources().getString(R.string.W), getResources().getString(R.string.bi), null, null, null);
            return;
          }
          try
          {
            this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000013", null);
            return;
          }
          catch (AppLoadException localAppLoadException4)
          {
            a(getResources().getString(R.string.c));
            return;
          }
        }
        if (i1 == R.id.cl)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "modifyLoginPwdView", "accountSecurityIndex", "modifyLoginPwd");
          try
          {
            this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000017", null);
            return;
          }
          catch (AppLoadException localAppLoadException3)
          {
            a(getResources().getString(R.string.c));
            return;
          }
        }
        if (i1 == R.id.dN)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "securityCheckUpIndex", "accountSecurityIndex", "checkUp");
          try
          {
            this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000043", null);
            return;
          }
          catch (AppLoadException localAppLoadException2)
          {
            a(getResources().getString(R.string.c));
            return;
          }
        }
        if (i1 == R.id.eW)
        {
          AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "-", "accountSecurityIndex", "guarantee");
          alert(null, a(R.string.cI), a(R.string.o), null, null, null);
          return;
        }
      }
      while (i1 != R.id.aQ);
      try
      {
        this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000115", null);
        return;
      }
      catch (AppLoadException localAppLoadException1)
      {
        a(getResources().getString(R.string.c));
        return;
      }
    }
    catch (AppLoadException localAppLoadException9)
    {
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.n = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.o = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.B = ((ConfigService)this.mApp.getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName()));
    this.r = LocalBroadcastManager.getInstance(this);
    this.C = new ArrayList();
    this.E = new HashMap();
    this.D = new ArrayList();
  }

  protected void onDestroy()
  {
    if ((this.r != null) && (this.s != null))
      this.r.unregisterReceiver(this.s);
    if ((this.r != null) && (this.t != null))
      this.r.unregisterReceiver(this.t);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "moreHome", "accountSecurityIndex", "backIcon");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.o != null)
    {
      this.q = this.o.getUserInfo();
      if (this.q != null)
      {
        this.p = this.q.getLogonId();
        b(this.p);
        a(this.q);
      }
    }
    else
    {
      return;
    }
    this.p = "";
    b(null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityAccountSecurityActivity
 * JD-Core Version:    0.6.2
 */