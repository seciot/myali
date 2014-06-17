package com.alipay.mobile.security.authcenter.ui.login;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.authcenter.a.e;
import com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment;
import com.alipay.mobile.security.authcenter.ui.sms.SMSSendFragment_;
import com.alipay.mobile.security.authcenter.ui.y;
import com.alipay.mobileapp.biz.rpc.smscode.vo.VerifySmsAndDeviceRes;
import com.alipay.mobileapp.biz.rpc.user.MobileUserResult;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="mobile_input_fragment")
public class MobileInputFragment extends SecurityBaseFuncFragment
  implements View.OnClickListener
{

  @ViewById(resName="switchAccount")
  APButton d;

  @ViewById(resName="registerAccount")
  APButton e;

  @ViewById(resName="nextStepBtn")
  APButton f;

  @ViewById(resName="mobileInput")
  APInputBox g;
  private y h;
  private e i;

  private void d()
  {
    ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
  }

  @UiThread
  void a(MobileUserResult paramMobileUserResult, String paramString)
  {
    LoginInfo localLoginInfo;
    if (paramMobileUserResult != null)
    {
      if (!paramMobileUserResult.isSuccess())
        break label74;
      localLoginInfo = new LoginInfo();
      if (!paramMobileUserResult.isMobileUser())
        break label45;
      localLoginInfo.b(true);
      localLoginInfo.a(paramString);
    }
    while (true)
    {
      this.h.a(localLoginInfo);
      return;
      label45: localLoginInfo.b(false);
      localLoginInfo.a(paramString);
      localLoginInfo.a(paramMobileUserResult.getBindedLoginIds());
      localLoginInfo.d(paramMobileUserResult.getUserStatus());
    }
    label74: ((BaseFragmentActivity)getActivity()).toast(paramMobileUserResult.getMemo(), 0);
  }

  @UiThread
  void a(String paramString, VerifySmsAndDeviceRes paramVerifySmsAndDeviceRes)
  {
    if (paramVerifySmsAndDeviceRes != null)
    {
      if (paramVerifySmsAndDeviceRes.smsVerify)
        c(paramString);
    }
    else
      return;
    SMSSendFragment_ localSMSSendFragment_ = new SMSSendFragment_();
    LoginInfo localLoginInfo = new LoginInfo();
    localLoginInfo.a(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("loginInfo", localLoginInfo);
    localSMSSendFragment_.setArguments(localBundle);
    localSMSSendFragment_.a(this.b);
    getActivity().getSupportFragmentManager().beginTransaction().add(R.id.bR, localSMSSendFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
  }

  @Background
  void b(String paramString)
  {
    ((BaseFragmentActivity)getActivity()).showProgressDialog("", false, null);
    try
    {
      VerifySmsAndDeviceRes localVerifySmsAndDeviceRes = this.i.c(paramString);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      a(paramString, localVerifySmsAndDeviceRes);
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
    this.a = AlipayApplication.getInstance().getMicroApplicationContext();
    this.h = new y((BaseFragmentActivity)getActivity(), this.b);
    this.i = new e();
    EditTextHasNullChecker localEditTextHasNullChecker = new EditTextHasNullChecker();
    APEditText localAPEditText = this.g.getEtContent();
    localAPEditText.addTextChangedListener(localEditTextHasNullChecker);
    localEditTextHasNullChecker.addNeedCheckView(localAPEditText);
    localEditTextHasNullChecker.addNeedEnabledButton(this.f);
    localAPEditText.requestFocus();
    a(localAPEditText);
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
    a(BehaviourIdEnum.OPENPAGE, "phoneLoginView", null, null);
  }

  @Background
  void c(String paramString)
  {
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("", false, null);
      MobileUserResult localMobileUserResult = this.i.b(paramString);
      d();
      a(localMobileUserResult, paramString);
      return;
    }
    catch (RpcException localRpcException)
    {
      d();
      throw localRpcException;
    }
  }

  public void onClick(View paramView)
  {
    int j = paramView.getId();
    if (j == R.id.dh)
      a();
    do
    {
      return;
      if (j == R.id.fQ)
      {
        a(false);
        a(BehaviourIdEnum.CLICKED, "", "phoneLoginView", "changeAccount");
        return;
      }
    }
    while (j != R.id.cw);
    String str = this.g.getInputedText();
    if (!str.matches("1\\d{10}"));
    for (int k = 0; k == 0; k = 1)
    {
      ((BaseFragmentActivity)getActivity()).toast("手机号码格式不正确", 0);
      return;
    }
    b();
    b(str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.MobileInputFragment
 * JD-Core Version:    0.6.2
 */