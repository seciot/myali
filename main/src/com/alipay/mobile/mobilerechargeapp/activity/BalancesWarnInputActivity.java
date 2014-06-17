package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextWatcher;
import android.view.Window;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APButtonInputBox;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.utils.MobilerechargeNetOperation;
import com.alipay.mobile.mobilerechargeapp.utils.Validator;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import java.util.Timer;

public class BalancesWarnInputActivity extends BaseActivity
{
  protected APButtonInputBox a;
  protected APTextView b;
  protected APButton c;
  protected APTextView d;
  TextWatcher e = new m(this);
  private String f = "balanceswarninput";
  private final int g = 13;
  private Timer h;
  private int i;
  private MobilerechargeNetOperation j = null;
  private Handler k = new Handler();
  private String l = "";

  public static String a(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      paramString = paramString.replace(" ", "");
    return paramString;
  }

  private void a(String paramString, boolean paramBoolean)
  {
    alert("", paramString, "确定", new o(this, paramBoolean), null, null);
  }

  private void d()
  {
    this.l = "";
    MicroApplicationContext localMicroApplicationContext = this.mApp.getMicroApplicationContext();
    Intent localIntent = new Intent(this, BalancesVerifySmsActivity_.class);
    localIntent.putExtra("inputnum", a(this.a.getInputedText()));
    localIntent.putExtra("verify_time", this.i);
    localMicroApplicationContext.startActivityForResult(this.mApp, localIntent, 11);
    this.i = 0;
  }

  private void d(String paramString)
  {
    alert(null, paramString, "确定", null, null, null);
  }

  private void e(String paramString)
  {
    alert(null, paramString, "确定", new p(this), null, null);
  }

  private void f(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("inputnum", paramString);
    setResult(200, localIntent);
    finish();
  }

  protected final void a()
  {
    getWindow().setSoftInputMode(4);
    this.j = new MobilerechargeNetOperation(this.mApp);
    this.a.setNeedShowClearButton(true);
    this.a.setTextFormatter(new APSplitTextFormatter("3,8"));
    this.a.setLength(13);
    this.a.getLastImgButton().setVisibility(8);
    this.a.addTextChangedListener(this.e);
    this.b.setTextColor(-65536);
    this.b.setVisibility(8);
    this.c.setEnabled(false);
    this.c.setOnClickListener(new l(this));
    c();
  }

  protected void a(AlertSignRes paramAlertSignRes)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
      return;
    new StringBuilder("Rpc response.resultStatus:").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      d();
      return;
    }
    if ((paramAlertSignRes.resultStatus < 2100) || (paramAlertSignRes.resultStatus >= 2110))
    {
      if (paramAlertSignRes.resultStatus == 2110)
      {
        c(a(this.a.getInputedText()));
        return;
      }
      if (paramAlertSignRes.resultStatus == 2112)
      {
        e(paramAlertSignRes.memo);
        return;
      }
    }
    d(paramAlertSignRes.memo);
  }

  protected void a(AlertSignRes paramAlertSignRes, String paramString)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
    {
      a(getResources().getString(R.string.w), true);
      return;
    }
    new StringBuilder("processAddalertSign Status = ").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      toast(getString(R.string.v), 0);
      f(paramString);
      return;
    }
    if ((paramAlertSignRes.resultStatus == 2013) || (paramAlertSignRes.resultStatus == 2102))
    {
      d(getResources().getString(R.string.x));
      return;
    }
    if ((paramAlertSignRes.resultStatus == 2112) || (paramAlertSignRes.resultStatus == 2105) || (paramAlertSignRes.resultStatus == 2103))
    {
      e(paramAlertSignRes.memo);
      return;
    }
    a(paramAlertSignRes.memo, false);
  }

  public final void b()
  {
    String str = a(this.a.getInputedText());
    if (!Validator.a(a(this.a.getInputedText())))
    {
      this.b.setVisibility(0);
      this.c.setEnabled(false);
      return;
    }
    if ((this.l != null) && (str.equals(this.l)) && (this.i > 0))
    {
      d();
      return;
    }
    this.i = 0;
    b(str);
  }

  protected void b(String paramString)
  {
    showProgressDialog("");
    try
    {
      a(this.j.b(paramString));
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("Rpc Exception:").append(localRpcException).toString();
      dismissProgressDialog();
      if (localRpcException.getCode() == 4)
      {
        d("网络无法连接，请检查您的网络。");
        return;
      }
      d("网络连接超时，请稍后再试。");
    }
  }

  protected void c()
  {
    String str = ReadSettingServerUrl.getCpbSignAddCmsUrl(this);
    new StringBuilder("query cms:").append(str).toString();
    HttpTransportSevice localHttpTransportSevice = (HttpTransportSevice)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(HttpTransportSevice.class.getName());
    HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(str);
    localHttpUrlRequest.setTransportCallback(new r(this));
    localHttpTransportSevice.execute(localHttpUrlRequest);
    new StringBuilder("doGet end:").append(str).toString();
  }

  protected void c(String paramString)
  {
    showProgressDialog("", false, new q(this));
    try
    {
      a(this.j.a(paramString, ""), paramString);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      new StringBuilder("addalertSign Exception Code = ").append(localRpcException.getCode()).toString();
      if (localRpcException.getCode() == 4)
      {
        a("网络无法连接，请检查您的网络。", false);
        return;
      }
      if ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 5))
      {
        a("网络连接超时，请稍后再试。", false);
        return;
      }
      a("网络连接超时，请稍后再试。", false);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    new StringBuilder("onActivityResult requestCode =").append(paramInt1).append("-resultCode-").append(paramInt2).toString();
    if (paramIntent == null);
    String str;
    int m;
    do
    {
      do
        return;
      while (paramInt1 != 11);
      str = paramIntent.getStringExtra("inputnum");
      if (paramInt2 == 200)
      {
        f(str);
        return;
      }
      m = paramIntent.getIntExtra("verify_time", 0);
    }
    while (m <= 0);
    new StringBuilder("onActivityResult phoneNumber=").append(str).append("-time=").append(m).toString();
    this.l = str;
    this.i = m;
    if (this.h != null)
    {
      this.h.cancel();
      this.h = null;
    }
    this.h = new Timer();
    this.h.schedule(new n(this), 0L, 1000L);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.BalancesWarnInputActivity
 * JD-Core Version:    0.6.2
 */