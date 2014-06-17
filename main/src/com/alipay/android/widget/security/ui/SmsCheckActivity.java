package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import com.alipay.android.widget.security.a.e;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobile.security.securitycommon.CommonEditTextHasNullChecker;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeResp;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.concurrent.atomic.AtomicBoolean;

@EActivity(resName="register_checkcode")
public class SmsCheckActivity extends BaseActivity
  implements OnSendCallback, AutoReadSmsCheckCodeCallBack
{
  public static final String a = SmsCheckActivity.class.getSimpleName();

  @ViewById(resName="register_inputSmsCodeTip")
  protected APTextView b;

  @ViewById(resName="register_SmsCodeSendBox")
  protected APCheckCodeHorizontalView c;

  @ViewById(resName="register_verifySmsCodeButton")
  protected APButton d;

  @ViewById(resName="auth_titleBar")
  protected APTitleBar e;
  private CommonEditTextHasNullChecker f;
  private AutoReadSmsCheckCode g;
  private AtomicBoolean h;
  private APInputBox i;
  private String j = "";
  private e k;
  private UserInfo l;

  @UiThread
  public void OnAutoReadSms(String paramString)
  {
    APEditText localAPEditText;
    if ((this.h.get()) && (this.i != null) && (!isFinishing()))
    {
      new StringBuilder("isNeedAutoInputSms=").append(this.h.get()).toString();
      this.j = paramString;
      this.i.getEtContent().setText(paramString);
      localAPEditText = this.i.getEtContent();
      if (!StringUtils.isEmpty(paramString))
        break label124;
    }
    label124: for (int m = 0; ; m = paramString.length())
    {
      localAPEditText.setSelection(m);
      this.d.setEnabled(true);
      AlipayApplication.getInstance().getMicroApplicationContext().Toast(getResources().getString(R.string.ao), 1);
      return;
    }
  }

  @AfterViews
  protected final void a()
  {
    this.i = this.c.getInputBox();
    this.e.setTitleText(getResources().getString(R.string.L));
    if (this.i != null)
    {
      this.i.setInputType(2);
      this.i.getEtContent().addTextChangedListener(this.f);
      this.i.getEtContent().setHintTextColor(getResources().getColor(R.color.colorccc));
      this.f.a(this.i.getEtContent());
    }
    this.f.a(this.d);
    APTextView localAPTextView = this.b;
    String str = getResources().getString(R.string.bD);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = SecurityUtil.a(this.l.getMobileNumber(), "hideaccount");
    localAPTextView.setText(String.format(str, arrayOfObject));
    this.d.setOnClickListener(new SmsCheckActivity.1(this));
    this.c.setOnSendCallback(this);
    this.c.scheduleTimer();
    this.i = this.c.getInputBox();
    this.i.clearFocus();
    this.i.postDelayed(new SmsCheckActivity.2(this), 200L);
  }

  @UiThread
  protected void a(VerifyAuthCodeResp paramVerifyAuthCodeResp)
  {
    dismissProgressDialog();
    if (paramVerifyAuthCodeResp == null)
    {
      toast(getResources().getString(R.string.bW), 1);
      return;
    }
    if ("200".equals(paramVerifyAuthCodeResp.resultCode))
    {
      Intent localIntent = new Intent(this, ValidatePayPwdAcitivyt_.class);
      this.mMicroApplicationContext.startActivity(this.mApp, localIntent);
      finish();
      return;
    }
    toast(paramVerifyAuthCodeResp.message, 1);
  }

  @Background
  protected void a(String paramString)
  {
    showProgressDialog("");
    try
    {
      if (this.j.equals(this.i.getInputedText()));
      for (String str = "down_auto"; ; str = "down_input")
      {
        a(this.k.a(this.l.getLogonId(), this.l.getMobileNumber(), paramString, str));
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      new StringBuilder("异常:").append(localRpcException.getMessage()).toString();
      throw localRpcException;
    }
  }

  @Background
  protected void b()
  {
    showProgressDialog("");
    SendSmsResp localSendSmsResp;
    String str;
    try
    {
      localSendSmsResp = this.k.a(this.l.getLogonId());
      dismissProgressDialog();
      if (localSendSmsResp == null)
      {
        toast(getResources().getString(R.string.bW), 1);
        return;
      }
      str = localSendSmsResp.resultCode;
      if ("200".equals(str))
      {
        this.g.dispose();
        this.h.set(true);
        this.g.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      new StringBuilder("异常:").append(localRpcException.getMessage()).toString();
      throw localRpcException;
    }
    if ("5201".equals(str))
    {
      alert(null, localSendSmsResp.message, getResources().getString(R.string.bi), new SmsCheckActivity.3(this), null, null);
      return;
    }
    toast(localSendSmsResp.message, 1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h = new AtomicBoolean(true);
    this.f = new CommonEditTextHasNullChecker();
    this.g = new AutoReadSmsCheckCode(null, this);
    this.k = new e();
    this.l = UserInfoHelper.getInstance().getUserInfo(this.mApp);
    this.g.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.g != null)
      this.g.dispose();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      alert("", "校验码短信可能略有延迟，请稍等。", "不了", new SmsCheckActivity.4(this), "好的", null);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onSend(SendResultCallback paramSendResultCallback)
  {
    b();
    paramSendResultCallback.onSuccess();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SmsCheckActivity
 * JD-Core Version:    0.6.2
 */