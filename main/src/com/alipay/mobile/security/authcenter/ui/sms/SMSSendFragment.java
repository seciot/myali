package com.alipay.mobile.security.authcenter.ui.sms;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.alipay.mobile.a.a.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="sms_send")
public class SMSSendFragment extends SmsBaseFragment
{

  @ViewById(resName="numberInput")
  APTextView d;

  @ViewById(resName="checkIdBySMS")
  APButton e;
  private LoginInfo f;

  protected void a(SmsCodeRes paramSmsCodeRes)
  {
    if (paramSmsCodeRes != null)
    {
      if (paramSmsCodeRes.succ)
      {
        SMSReceiveFragment_ localSMSReceiveFragment_ = new SMSReceiveFragment_();
        Bundle localBundle = new Bundle();
        localBundle.putString("mobileNo", this.f.a());
        localSMSReceiveFragment_.setArguments(localBundle);
        localSMSReceiveFragment_.a(this.b);
        getActivity().getSupportFragmentManager().beginTransaction().add(R.id.bR, localSMSReceiveFragment_).setTransition(4097).addToBackStack(null).commitAllowingStateLoss();
      }
    }
    else
      return;
    ((BaseFragmentActivity)getActivity()).alert(null, paramSmsCodeRes.msg, "确定", null, null, null);
  }

  @AfterViews
  final void c()
  {
    this.f = ((LoginInfo)getArguments().getParcelable("loginInfo"));
    String str = this.f.a();
    this.d.setText(a.a(str));
    this.e.setOnClickListener(new i(this, str));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.SMSSendFragment
 * JD-Core Version:    0.6.2
 */