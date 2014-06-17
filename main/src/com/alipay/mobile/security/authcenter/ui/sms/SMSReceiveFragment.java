package com.alipay.mobile.security.authcenter.ui.sms;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.authcenter.a.e;
import com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment;
import com.alipay.mobile.security.authcenter.ui.y;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.alipay.mobileapp.biz.rpc.user.MobileUserResult;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="sms_receive")
public class SMSReceiveFragment extends SmsBaseFragment
  implements View.OnClickListener, OnSendCallback
{

  @ViewById(resName="checkCodeTip")
  APTextView d;

  @ViewById(resName="checkCodeSendBox")
  APCheckCodeHorizontalView e;

  @ViewById(resName="submitSmsCode")
  APButton f;
  private APEditText j;
  private String k;
  private SendResultCallback l;

  public void OnAutoReadSms(String paramString)
  {
    super.OnAutoReadSms(paramString);
    c(paramString);
  }

  protected void a(SmsCodeRes paramSmsCodeRes)
  {
    if (paramSmsCodeRes != null)
    {
      if (!paramSmsCodeRes.succ)
        break label28;
      if (this.l != null)
        this.l.onSuccess();
    }
    return;
    label28: ((BaseFragmentActivity)getActivity()).alert("", paramSmsCodeRes.msg, "确定", null, null, null);
  }

  @UiThread
  void a(MobileUserResult paramMobileUserResult)
  {
    LoginInfo localLoginInfo;
    if (paramMobileUserResult != null)
    {
      if (!paramMobileUserResult.isSuccess())
        break label94;
      localLoginInfo = new LoginInfo();
      if (!paramMobileUserResult.isMobileUser())
        break label62;
      localLoginInfo.b(true);
      localLoginInfo.a(this.k);
    }
    while (true)
    {
      new y((BaseFragmentActivity)getActivity(), this.b).a(localLoginInfo);
      return;
      label62: localLoginInfo.b(false);
      localLoginInfo.a(this.k);
      localLoginInfo.a(paramMobileUserResult.getBindedLoginIds());
      localLoginInfo.d(paramMobileUserResult.getUserStatus());
    }
    label94: ((BaseFragmentActivity)getActivity()).toast(paramMobileUserResult.getMemo(), 0);
  }

  @UiThread
  void b(SmsCodeRes paramSmsCodeRes)
  {
    if (paramSmsCodeRes != null)
    {
      if (paramSmsCodeRes.succ)
      {
        b();
        b(this.k);
      }
    }
    else
      return;
    this.e.getInputBox().setText("");
    ((BaseFragmentActivity)getActivity()).toast(paramSmsCodeRes.msg, 0);
  }

  @Background
  void b(String paramString)
  {
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("", false, null);
      MobileUserResult localMobileUserResult = this.g.b(paramString);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      a(localMobileUserResult);
      return;
    }
    catch (RpcException localRpcException)
    {
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      throw localRpcException;
    }
  }

  @AfterViews
  final void c()
  {
    this.j = this.e.getInputBox().getEtContent();
    this.j.setInputType(3);
    EditTextHasNullChecker localEditTextHasNullChecker = new EditTextHasNullChecker();
    this.j.addTextChangedListener(localEditTextHasNullChecker);
    localEditTextHasNullChecker.addNeedEnabledButton(this.f);
    localEditTextHasNullChecker.addNeedCheckView(this.j);
    e();
    Bundle localBundle = getArguments();
    if (localBundle != null)
      this.k = localBundle.getString("mobileNo");
    if (!TextUtils.isEmpty(this.k))
    {
      String str1 = getText(R.string.S);
      String str2 = this.k.substring(0, 3) + "****" + this.k.substring(7);
      this.d.setText(str1.replace("%s", str2));
    }
    this.e.setOnSendCallback(this);
    this.e.scheduleTimer();
    this.f.setOnClickListener(this);
    this.j.postDelayed(new a(this), 200L);
  }

  @UiThread
  void c(String paramString)
  {
    this.j.setText(paramString);
    this.j.setSelection(paramString.length());
  }

  @Background
  void d()
  {
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("");
      String str = this.e.getText();
      SmsCodeRes localSmsCodeRes = this.g.a(str, this.k, str.equals(this.i));
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      b(localSmsCodeRes);
      return;
    }
    catch (RpcException localRpcException)
    {
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      new StringBuilder().append(localRpcException.getMessage()).toString();
      throw localRpcException;
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.fM)
      d();
  }

  public void onSend(SendResultCallback paramSendResultCallback)
  {
    d(this.k);
    this.l = paramSendResultCallback;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.SMSReceiveFragment
 * JD-Core Version:    0.6.2
 */