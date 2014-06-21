package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.utils.CommonEditTextHasNullChecker;
import com.alipay.mobile.mobilerechargeapp.utils.MobilerechargeNetOperation;
import com.alipay.mobile.mobilerechargeapp.utils.Validator;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import java.util.concurrent.atomic.AtomicBoolean;

public class BalancesVerifySmsActivity extends BaseActivity
  implements OnSendCallback, AutoReadSmsCheckCodeCallBack
{
  protected String a = "balancesverifysmsactivity";
  protected AutoReadSmsCheckCode b;
  protected CommonEditTextHasNullChecker c;
  protected APTextView d;
  protected APButton e;
  protected APCheckCodeHorizontalView f;
  private String g = "95188";
  private String h = "";
  private String i = "";
  private APInputBox j;
  private AtomicBoolean k;
  private MobilerechargeNetOperation l = null;
  private int m = 0;

  private void b(String paramString)
  {
    alert(null, paramString, "确定", null, null, null);
  }

  public void OnAutoReadSms(String paramString)
  {
    APEditText localAPEditText;
    if ((this.k.get()) && (this.j != null) && (!isFinishing()))
    {
      new StringBuilder("isNeedAutoInputSms=").append(this.k.get()).toString();
      this.h = paramString;
      this.j.getEtContent().setText(paramString);
      localAPEditText = this.j.getEtContent();
      if (!Validator.c(paramString))
        break label103;
    }
    label103: for (int n = 0; ; n = paramString.length())
    {
      localAPEditText.setSelection(n);
      this.e.setEnabled(true);
      return;
    }
  }

  protected final void a()
  {
    this.k = new AtomicBoolean(true);
    this.c = new CommonEditTextHasNullChecker();
    this.b = new AutoReadSmsCheckCode(null, this);
    AutoReadSmsCheckCode localAutoReadSmsCheckCode = this.b;
    Long localLong = Long.valueOf(System.currentTimeMillis());
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.g;
    localAutoReadSmsCheckCode.readsms("(\\d{4,6})", 1, localLong, 60, "", arrayOfString);
    this.l = new MobilerechargeNetOperation(this.mApp);
    this.i = getIntent().getStringExtra("inputnum");
    this.m = getIntent().getIntExtra("verify_time", 0);
    this.j = this.f.getInputBox();
    if (this.j != null)
    {
      this.j.setInputType(2);
      this.j.getEtContent().addTextChangedListener(this.c);
      this.j.getEtContent().setHintTextColor(getResources().getColor(R.color.colorccc));
      this.c.a(this.j.getEtContent());
    }
    this.c.a(this.e);
    APTextView localAPTextView = this.d;
    String str = getResources().getString(R.string.p);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Validator.d(this.i);
    localAPTextView.setText(String.format(str, arrayOfObject));
    this.e.setOnClickListener(new a(this));
    this.f.setOnSendCallback(this);
    if (this.m > 0)
      this.f.setCurrentSecond(this.m);
    this.f.scheduleTimer();
    this.j = this.f.getInputBox();
    this.j.clearFocus();
    this.j.postDelayed(new b(this), 200L);
  }

  protected void a(AlertSignRes paramAlertSignRes)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
      b(getResources().getString(R.string.y));
    do
    {
      return;
      new StringBuilder("Rpc response.resultStatus:").append(paramAlertSignRes.resultStatus).toString();
      if (paramAlertSignRes.resultStatus != 100)
        break;
    }
    while (this.b == null);
    this.b.dispose();
    this.k.set(true);
    AutoReadSmsCheckCode localAutoReadSmsCheckCode = this.b;
    Long localLong = Long.valueOf(System.currentTimeMillis());
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.g;
    localAutoReadSmsCheckCode.readsms("(\\d{4,6})", 1, localLong, 60, "", arrayOfString);
    return;
    this.f.currentSecond2Zero();
    if (this.b != null)
      this.b.dispose();
    b(paramAlertSignRes.memo);
  }

  protected void a(String paramString)
  {
    showProgressDialog("");
    try
    {
      a(this.l.b(paramString));
      return;
    }
    catch (RpcException localRpcException)
    {
      do
        new StringBuilder("Rpc Exception:").append(localRpcException).toString();
      while (this.b == null);
      this.b.dispose();
      this.f.currentSecond2Zero();
      if (localRpcException.getCode() != 4)
        break label89;
    }
    b("网络无法连接，请检查您的网络。");
    while (true)
    {
      dismissProgressDialog();
      return;
      label89: b("网络连接超时，请稍后再试。");
    }
  }

  protected void a(String paramString1, String paramString2)
  {
    showProgressDialog("");
    try
    {
      b(this.l.a(paramString1, paramString2));
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("Rpc Exception:").append(localRpcException).toString();
      dismissProgressDialog();
      if (localRpcException.getCode() == 4)
      {
        b("网络无法连接，请检查您的网络。");
        return;
      }
      b("网络连接超时，请稍后再试。");
    }
  }

  protected final void a(boolean paramBoolean)
  {
    if (this.b != null)
      this.b.dispose();
    Intent localIntent = new Intent();
    new StringBuilder("backToInputActivity returntolist = ").append(paramBoolean).toString();
    if (paramBoolean)
    {
      localIntent.putExtra("inputnum", this.i);
      setResult(200, localIntent);
      return;
    }
    this.m = this.f.getCurrentSecond();
    if (this.m == 60)
      this.m = 0;
    new StringBuilder("backToInputActivity mTimeLog = ").append(this.m).toString();
    localIntent.putExtra("inputnum", this.i);
    localIntent.putExtra("verify_time", this.m);
    setResult(-1, localIntent);
  }

  public final void b()
  {
    String str = this.j.getEtContent().getText().toString();
    if ((str != null) && (str.length() > 0))
    {
      this.k.set(false);
      if (this.b != null)
        this.b.dispose();
      a(this.i, str);
      Validator.v(this, this.j.getEtContent());
      return;
    }
    toast(getString(R.string.o), 0);
  }

  protected void b(AlertSignRes paramAlertSignRes)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
      return;
    new StringBuilder("Rpc response.resultStatus:").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      toast(getString(R.string.v), 0);
      a(true);
      finish();
      return;
    }
    if (((paramAlertSignRes.resultStatus < 2100) || (paramAlertSignRes.resultStatus >= 2110)) && ((paramAlertSignRes.resultStatus == 2112) || (paramAlertSignRes.resultStatus == 2111)))
    {
      alert(null, paramAlertSignRes.memo, "确定", new c(this), null, null);
      return;
    }
    b(paramAlertSignRes.memo);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.b != null)
      this.b.dispose();
    this.i = "";
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      a(false);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onSend(SendResultCallback paramSendResultCallback)
  {
    a(this.i);
    paramSendResultCallback.onSuccess();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.BalancesVerifySmsActivity
 * JD-Core Version:    0.6.2
 */