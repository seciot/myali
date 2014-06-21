package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.browser.HtmlActivityV2_;
import com.alipay.mobile.browser.vo.HtmlActivityRequest;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;
import com.alipay.mobile.mobilerechargeapp.utils.MobilerechargeNetOperation;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;

public class MobileRechargeCashierActivity extends BaseActivity
{
  public APRadioTableView a;
  protected APTextView b;
  protected APTableView c;
  protected APTitleBar d;
  private String e;
  private boolean f = false;
  private int g = -1;
  private MobilerechargeNetOperation h = null;
  private Handler i = new Handler();

  private void a(String paramString)
  {
    alert(null, paramString, "确定", null, null, null);
  }

  private void b()
  {
    showProgressDialog("", false, new cb(this));
  }

  protected final void a()
  {
    this.h = new MobilerechargeNetOperation(this.mApp);
    Intent localIntent = getIntent();
    this.e = localIntent.getStringExtra("bindphonenum");
    this.f = localIntent.getBooleanExtra("err_valid", false);
    this.g = localIntent.getIntExtra("phone_status", -1);
    if ((this.e == null) || (this.e.length() == 0) || (!this.f) || (this.g == -1) || (this.g == 1));
    while (true)
    {
      LogAgentWriteLog.f(this);
      this.d.setGenericButtonText(getResources().getString(R.string.Loadable));
      this.d.setGenericButtonVisiable(true);
      this.d.setGenericButtonListener(new bv(this));
      this.c.setVisibility(8);
      String str = ReadSettingServerUrl.getCmsUrl(this);
      new StringBuilder("query cms:").append(str).toString();
      HttpTransportSevice localHttpTransportSevice = (HttpTransportSevice)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(HttpTransportSevice.class.getName());
      HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(str);
      localHttpUrlRequest.setTransportCallback(new cc(this));
      localHttpTransportSevice.execute(localHttpUrlRequest);
      return;
      this.a.setVisibility(0);
      this.b.setVisibility(0);
      this.a.setEnabled(false);
      this.a.setLeftText(getResources().getString(R.string.q));
      this.a.getArrowImage().setVisibility(8);
      this.a.showToggleButton(false);
      this.a.setOnSwitchListener(new ca(this));
    }
  }

  protected void a(AlertSignRes paramAlertSignRes, int paramInt)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
    {
      a(false);
      return;
    }
    new StringBuilder("processAddalertSign Status = ").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      toast(getString(R.string.v), 0);
      return;
    }
    if ((paramAlertSignRes.resultStatus == 2013) || (paramAlertSignRes.resultStatus == 2102))
    {
      a(false);
      getBundle(getResources().getString(R.string.x));
      return;
    }
    a(false);
    a(paramAlertSignRes.memo);
  }

  protected void a(String paramString, int paramInt)
  {
    LogAgentWriteLog.v(this, false);
    b();
    try
    {
      a(this.h.a(paramString, ""), paramInt);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      a(false);
      if (localRpcException.getCode() == 4)
      {
        a("网络无法连接，请检查您的网络。");
        return;
      }
      a("网络连接超时，请稍后再试。");
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    HtmlActivityRequest localHtmlActivityRequest = new HtmlActivityRequest();
    localHtmlActivityRequest.setRequestUrl(paramString1);
    localHtmlActivityRequest.setTitle(paramString2);
    localHtmlActivityRequest.setNeedLogin(true);
    localHtmlActivityRequest.setHandlerType(1);
    Intent localIntent = new Intent(this, HtmlActivityV2_.class);
    localIntent.putExtra("HARequest", localHtmlActivityRequest);
    this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 2);
  }

  protected void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.showToggleButton(true);
      return;
    }
    this.a.showToggleButton(false);
  }

  protected void b(AlertSignRes paramAlertSignRes, int paramInt)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
    {
      a(true);
      getBundle(getString(R.string.s));
      return;
    }
    new StringBuilder("cancelalertSign Status = ").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      toast(getString(R.string.s), 0);
      return;
    }
    if ((paramAlertSignRes.resultStatus == 2013) || (paramAlertSignRes.resultStatus == 2102))
    {
      a(true);
      getBundle(getResources().getString(R.string.x));
      return;
    }
    a(true);
    a(paramAlertSignRes.memo);
  }

  protected void b(String paramString, int paramInt)
  {
    LogAgentWriteLog.d(this, false);
    b();
    try
    {
      b(this.h.a(paramString), paramInt);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      a(true);
      if (localRpcException.getCode() == 4)
      {
        a("网络无法连接，请检查您的网络。");
        return;
      }
      a("网络连接超时，请稍后再试。");
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 2) && (this.mApp != null))
      this.mApp.getMicroApplicationContext().finishApp("10000003", "10000003", null);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileRechargeCashierActivity
 * JD-Core Version:    0.6.2
 */