package com.alipay.mobile.withdraw.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.phone.wealth.withdraw.R.id;
import com.alipay.android.phone.wealth.withdraw.R.layout;
import com.alipay.android.phone.wealth.withdraw.R.string;
import com.alipay.kabaoprod.biz.financial.withdraw.request.WithdrawReq;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobile.withdraw.rpc.WithdrawRpcBiz;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity
public class WithdrawSmsCheckActivity extends BaseActivity
{
  protected View a;
  private APCheckCodeHorizontalView b;
  private TextView c;
  private Button d;
  private EditTextHasNullChecker e;
  private SendResultCallback f;
  private AutoReadSmsCheckCode g;
  private Integer h = Integer.valueOf(99);

  @Background
  protected void a()
  {
    try
    {
      WithdrawReq localWithdrawReq = new WithdrawReq();
      localWithdrawReq.needResendRandomCode = true;
      KabaoCommonResult localKabaoCommonResult = new WithdrawRpcBiz(this.mApp).a(localWithdrawReq);
      if ("2050".equals(localKabaoCommonResult.resultCode))
      {
        a(localKabaoCommonResult);
        return;
      }
      b(localKabaoCommonResult);
      return;
    }
    catch (RpcException localRpcException)
    {
      b();
      throw localRpcException;
    }
  }

  @UiThread
  protected void a(KabaoCommonResult paramKabaoCommonResult)
  {
    this.g.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
    this.f.onSuccess();
  }

  @UiThread
  protected void a(String paramString)
  {
    this.h = Integer.valueOf(0);
    toast(getResources().getString(R.string.k), 1);
    this.b.getInputBox().setText(paramString);
    APEditText localAPEditText = this.b.getInputBox().getEtContent();
    boolean bool = StringUtils.isEmpty(paramString);
    int i = 0;
    if (bool);
    while (true)
    {
      localAPEditText.setSelection(i);
      return;
      i = paramString.length();
    }
  }

  @UiThread
  protected void b()
  {
    this.f.onFail();
  }

  @UiThread
  protected void b(KabaoCommonResult paramKabaoCommonResult)
  {
    this.f.onFail();
    toast(paramKabaoCommonResult.resultView, 0);
  }

  @Background
  protected void b(String paramString)
  {
    KabaoCommonResult localKabaoCommonResult;
    try
    {
      WithdrawReq localWithdrawReq = new WithdrawReq();
      localWithdrawReq.randomCode = paramString;
      if (this.h.intValue() == 1);
      for (localWithdrawReq.fillType = "AUTO_FILL"; ; localWithdrawReq.fillType = "MANUAL_FILL")
      {
        localKabaoCommonResult = new WithdrawRpcBiz(this.mApp).a(localWithdrawReq);
        if (!localKabaoCommonResult.success)
          break;
        c(localKabaoCommonResult);
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      c();
      throw localRpcException;
    }
    d(localKabaoCommonResult);
  }

  @UiThread
  protected void c()
  {
    dismissProgressDialog();
  }

  @UiThread
  protected void c(KabaoCommonResult paramKabaoCommonResult)
  {
    dismissProgressDialog();
    ExtViewUtil.simpleAlert(this, paramKabaoCommonResult.resultView, new ad(this));
  }

  @UiThread
  protected void d(KabaoCommonResult paramKabaoCommonResult)
  {
    dismissProgressDialog();
    toast(paramKabaoCommonResult.resultView, 0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e = new EditTextHasNullChecker();
    this.a = ((LinearLayout)LayoutInflater.from(this).inflate(R.layout.DefaultThreadFactory, null, false));
    setContentView(this.a);
    ((APTitleBar)findViewById(R.id.n)).setTitleText(getString(R.string.AppBundle));
    this.b = ((APCheckCodeHorizontalView)findViewById(R.id.m));
    APEditText localAPEditText = this.b.getInputBox().getEtContent();
    localAPEditText.setInputType(2);
    this.b.setOnSendCallback(new z(this));
    this.b.getInputBox().getEtContent().addTextChangedListener(new aa(this));
    this.b.scheduleTimer();
    this.e.addNeedCheckView(localAPEditText);
    localAPEditText.addTextChangedListener(this.e);
    this.c = ((TextView)findViewById(R.id.BundlesManager));
    String str = "";
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
        str = localBundle.getString("smscheck_memo_key");
    }
    this.c.setText(str);
    this.d = ((Button)findViewById(R.id.BundlesManagerImpl));
    this.d.setEnabled(false);
    this.e.addNeedEnabledButton(this.d);
    this.d.setOnClickListener(new ab(this));
    this.g = new AutoReadSmsCheckCode(this.mApp, new ac(this));
    this.g.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.WithdrawSmsCheckActivity
 * JD-Core Version:    0.6.2
 */