package com.alipay.android.widget.security.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.Html;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.alipay.android.widget.security.a.c;
import com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver;
import com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver.a;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.quickhelp.QuickHelpResp;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="report_loss")
public class ReportLossActivity extends BaseActivity
  implements View.OnClickListener, SecurityCertifiedMsgReceiver.a
{

  @ViewById(resName="securitySettingTip")
  APTextView a;

  @ViewById(resName="securitySettingTip2")
  APTextView b;

  @ViewById(resName="realNameCertify")
  APTableView c;

  @ViewById(resName="payPwdSetting")
  APTableView d;

  @ViewById(resName="toFinishView")
  APLinearLayout e;

  @ViewById(resName="finishedView")
  APLinearLayout f;
  private ImageView g;
  private ImageView h;
  private SecurityCertifiedMsgReceiver i;
  private SimplePwdOpenReceiver j;
  private boolean k;
  private LocalBroadcastManager l;

  private void c()
  {
    if (this.i == null)
    {
      this.i = new SecurityCertifiedMsgReceiver();
      this.i.a(this);
    }
    this.l.registerReceiver(this.i, new IntentFilter("com.alipay.security.namecertified"));
  }

  @AfterViews
  final void a()
  {
    this.l = LocalBroadcastManager.getInstance(this);
    this.g = this.c.getArrowImage();
    this.h = this.d.getArrowImage();
    this.a.setText(Html.fromHtml(String.format(getText(R.string.cu), new Object[] { "<font color=\"#ff6600\">95188</font>" })));
    this.b.setText(Html.fromHtml(String.format(getText(R.string.ai), new Object[] { "<font color=\"#ff6600\">95188</font>" })));
    b();
  }

  public final void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    new StringBuilder("name certified receive action: ").append(str).toString();
    if (("com.alipay.security.namecertified".equalsIgnoreCase(str)) && (paramIntent.getBooleanExtra("isCertified", false)))
      b();
  }

  @UiThread
  void a(QuickHelpResp paramQuickHelpResp)
  {
    if (paramQuickHelpResp == null)
    {
      toast("查询出错", 0);
      return;
    }
    if (!paramQuickHelpResp.success)
    {
      toast(paramQuickHelpResp.message, 0);
      return;
    }
    this.a.setVisibility(0);
    boolean bool1 = paramQuickHelpResp.certified;
    boolean bool2 = paramQuickHelpResp.openSimplePwd;
    if (bool1)
    {
      this.g.setVisibility(8);
      this.c.setRightText("");
      this.c.setLeftImage(R.drawable.t);
      this.c.setOnClickListener(null);
      this.c.setLeftText(getText(R.string.p));
      if (!bool2)
        break label268;
      this.d.setLeftImage(R.drawable.t);
      this.h.setVisibility(8);
      this.d.setRightText("");
      this.d.setLeftText(getText(R.string.ag));
      this.d.setOnClickListener(null);
    }
    while (true)
    {
      if ((!bool1) || (!bool2))
        break label365;
      this.e.setVisibility(8);
      this.f.setVisibility(0);
      return;
      this.c.setOnClickListener(this);
      this.c.setLeftImage(R.drawable.Bundleable);
      this.c.setRightText("立即认证");
      this.c.setLeftText(getText(R.string.aM));
      c();
      break;
      label268: if (this.j == null)
        this.j = new SimplePwdOpenReceiver((byte)0);
      this.l.registerReceiver(this.j, new IntentFilter("com.alipay.mobile.simplepwd.open"));
      this.d.setLeftText(getText(R.string.bA));
      this.d.setLeftImage(R.drawable.Bundleable);
      this.d.setRightText("立即开启");
      this.d.setOnClickListener(this);
    }
    label365: this.e.setVisibility(0);
    this.f.setVisibility(8);
  }

  @Background
  void b()
  {
    showProgressDialog("", false, null);
    try
    {
      UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(this.mApp);
      if (localUserInfo != null)
      {
        QuickHelpResp localQuickHelpResp = new c(this.mApp).a(localUserInfo.getUserId());
        dismissProgressDialog();
        a(localQuickHelpResp);
        return;
      }
      ((AuthService)this.mMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName())).auth(new Bundle());
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  public void onClick(View paramView)
  {
    int m = paramView.getId();
    if (m == R.id.dd);
    while (m != R.id.cN)
      try
      {
        if (!this.k)
        {
          c();
          this.k = true;
        }
        this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000038", null);
        return;
      }
      catch (AppLoadException localAppLoadException2)
      {
        new StringBuilder("{[info=doNameCertified],[msg=").append(localAppLoadException2.getMessage()).append("]}").toString();
        return;
      }
    try
    {
      this.mMicroApplicationContext.startApp("20000068", "20000051", null);
      return;
    }
    catch (AppLoadException localAppLoadException1)
    {
      localAppLoadException1.printStackTrace();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.i != null)
      this.l.unregisterReceiver(this.i);
    if (this.j != null)
      this.l.unregisterReceiver(this.j);
  }

  private final class SimplePwdOpenReceiver extends BroadcastReceiver
  {
    private SimplePwdOpenReceiver()
    {
    }

    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getBooleanExtra("openResult", false))
        ReportLossActivity.this.b();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ReportLossActivity
 * JD-Core Version:    0.6.2
 */