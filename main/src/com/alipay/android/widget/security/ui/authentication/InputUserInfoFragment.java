package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobilesecurity.core.model.account.certify.DoRealNameResult;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="authentication_input_userinfo")
public class InputUserInfoFragment extends BaseAuthenticationFragment
  implements View.OnClickListener
{

  @ViewById(resName="userName")
  protected APInputBox d;

  @ViewById(resName="userId")
  protected APInputBox e;

  @ViewById(resName="confirmBtn")
  protected APButton f;
  private EditTextHasNullChecker g = new EditTextHasNullChecker();
  private a h;

  @Background
  protected void a(String paramString1, String paramString2)
  {
    DoRealNameResult localDoRealNameResult;
    try
    {
      ((BaseFragmentActivity)getActivity()).showProgressDialog("认证中", true, null);
      localDoRealNameResult = this.h.a(((BaseAuthenticationActivity)getActivity()).d(), paramString1, paramString2);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      if (this == null)
        return;
      if (isRemoving())
        return;
      if (localDoRealNameResult == null)
        break label344;
      if (localDoRealNameResult.success)
      {
        b(this.h);
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      localRpcException.getMessage();
      throw localRpcException;
    }
    if ("7011".equalsIgnoreCase(localDoRealNameResult.resultCode))
    {
      ((BaseFragmentActivity)getActivity()).alert(localDoRealNameResult.title, localDoRealNameResult.message, "了解详情", new InputUserInfoFragment.3(this), "确定", null);
      return;
    }
    if ("7013".equalsIgnoreCase(localDoRealNameResult.resultCode))
    {
      ((BaseFragmentActivity)getActivity()).alert(localDoRealNameResult.title, localDoRealNameResult.message, "确定", new InputUserInfoFragment.4(this), null, null);
      return;
    }
    if ("7002".equalsIgnoreCase(localDoRealNameResult.resultCode))
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("certifiedResult", localDoRealNameResult.canUpgradeACertify);
      CertifiedSuccessShootFragment_ localCertifiedSuccessShootFragment_ = new CertifiedSuccessShootFragment_();
      localCertifiedSuccessShootFragment_.setArguments(localBundle);
      localCertifiedSuccessShootFragment_.a(this.a);
      ((AuthenticationCertifiedActivity)getActivity()).a(localCertifiedSuccessShootFragment_, true);
      return;
    }
    if ("7003".equalsIgnoreCase(localDoRealNameResult.resultCode))
    {
      ((BaseFragmentActivity)getActivity()).alert(localDoRealNameResult.title, localDoRealNameResult.message, "确定", new InputUserInfoFragment.5(this), null, null);
      return;
    }
    ((BaseFragmentActivity)getActivity()).alert(null, localDoRealNameResult.message, "确定", new InputUserInfoFragment.6(this), null, null);
    return;
    label344: ((BaseFragmentActivity)getActivity()).toast(getResources().getString(R.string.c), 0);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.h = new a();
    this.e.getEtContent().setKeyListener(new InputUserInfoFragment.1(this));
    this.f.setOnClickListener(this);
    this.g.addNeedEnabledButton(this.f);
    this.d.getEtContent().addTextChangedListener(this.g);
    this.g.addNeedCheckView(this.d.getEtContent());
    this.e.getEtContent().addTextChangedListener(this.g);
    this.g.addNeedCheckView(this.e.getEtContent());
    APEditText localAPEditText = this.d.getEtContent();
    localAPEditText.postDelayed(new BaseAuthenticationFragment.1(this, localAPEditText), 500L);
    this.d.getEtContent().requestFocus();
    AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "noRealNameEditView", "noRealNameDetail", "-");
  }

  public void onClick(View paramView)
  {
    FragmentActivity localFragmentActivity = getActivity();
    ((InputMethodManager)localFragmentActivity.getSystemService("input_method")).hideSoftInputFromWindow(localFragmentActivity.getWindow().getDecorView().getWindowToken(), 0);
    String str1 = this.d.getInputedText();
    String str2 = this.e.getInputedText();
    if (!TextUtils.isEmpty(str1));
    for (int i = 1; i == 0; i = 0)
    {
      ((BaseFragmentActivity)getActivity()).toast("请正确填写姓名", 0);
      return;
    }
    if (!TextUtils.isEmpty(str2))
    {
      String str3 = str2.replace(" ", "");
      if ((TextUtils.isEmpty(str3)) || (!str3.matches("^\\d{17}[0-9xX]$")))
        break label147;
    }
    label147: for (int j = 1; j == 0; j = 0)
    {
      ((BaseFragmentActivity)getActivity()).toast("仅支持18位身份证号", 0);
      return;
    }
    try
    {
      String str4 = String.format(getString(R.string.ba), new Object[] { str1 });
      ((BaseFragmentActivity)getActivity()).alert(null, str4, getString(R.string.af), new InputUserInfoFragment.2(this, str1, str2), getString(R.string.Z), null, Boolean.valueOf(true));
      AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "noRealNameConfirmView", "noRealNameEditView", "-");
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.InputUserInfoFragment
 * JD-Core Version:    0.6.2
 */