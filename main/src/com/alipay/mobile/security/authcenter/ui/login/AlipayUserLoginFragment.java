package com.alipay.mobile.security.authcenter.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.login.bean.b;
import com.alipay.mobile.security.authcenter.ui.SmartInputTextView;
import com.alipay.mobile.security.authcenter.ui.a;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.List;

@EFragment(resName="alipay_user_login")
public class AlipayUserLoginFragment extends AliUserLoginFragment<UserInfo>
{

  @ViewById(resName="forgetPwd")
  APTextView n;
  private boolean t = false;

  protected final void a(b paramb)
  {
    if (this.t);
    for (String str = this.l; ; str = this.d.getText())
    {
      this.l = str;
      paramb.a(this.l);
      paramb.b(this.g.getInputedText());
      paramb.c(null);
      paramb.d(this.r.getCheckCodeInput().getInputedText());
      paramb.e("");
      a(BehaviourIdEnum.CLICKED, null, "alipayLoginView", "loginButton");
      return;
    }
  }

  protected final List<UserInfo> c()
  {
    List localList = this.i.queryAccountList();
    if ((localList != null) && (localList.size() > 5))
      localList = localList.subList(0, 5);
    return localList;
  }

  protected final void d()
  {
    this.j = new a(getActivity(), this.m, R.layout.aT, this.k);
  }

  final void f()
  {
    this.n.setOnClickListener(this);
    this.p = "alipay";
    this.t = false;
    super.f();
    a(BehaviourIdEnum.OPENPAGE, "alipayLoginView", null, null);
  }

  protected final void i()
  {
    if (getActivity() == null)
      return;
    Intent localIntent = getActivity().getIntent();
    if (localIntent != null)
    {
      this.l = localIntent.getStringExtra("logonId");
      if (TextUtils.isEmpty(this.l))
        this.l = localIntent.getStringExtra("loginId");
      if (!TextUtils.isEmpty(this.l));
    }
    else
    {
      this.l = this.i.getCurrentLoginLogonId();
    }
    Bundle localBundle = getArguments();
    if (localBundle != null)
      this.l = ((LoginInfo)localBundle.getParcelable("loginInfo")).a();
    if (!TextUtils.isEmpty(this.l))
    {
      this.d.setText(SecurityUtil.a(this.l, "hideaccount"));
      this.d.setSelection(this.d.getText().length());
      this.d.setThreshold(1);
      this.t = true;
      a(this.g.getEtContent());
      this.g.getEtContent().requestFocus();
    }
    this.d.addTextChangedListener(new d(this));
  }

  public void onClick(View paramView)
  {
    super.onClick(paramView);
    if (paramView.getId() == R.id.bi)
      getBundle("");
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    a(BehaviourIdEnum.CLICKED, "phoneLoginView", "alipayLoginView", "backIcon");
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    UserInfo localUserInfo = (UserInfo)this.j.getItem(paramInt);
    this.l = localUserInfo.getLogonId();
    String str = SecurityUtil.a(this.l, "hideaccount");
    this.d.setText(str);
    this.d.setSelection(str.length());
    this.g.setText(null);
    this.t = true;
    if (localUserInfo.isWirelessUser())
    {
      UserLoginFragment_ localUserLoginFragment_ = new UserLoginFragment_();
      localUserLoginFragment_.a(this.b);
      LoginInfo localLoginInfo = new LoginInfo();
      localLoginInfo.a(this.l);
      localLoginInfo.a(false);
      localLoginInfo.b(true);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("loginInfo", localLoginInfo);
      localUserLoginFragment_.setArguments(localBundle);
      a(localUserLoginFragment_);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.AlipayUserLoginFragment
 * JD-Core Version:    0.6.2
 */