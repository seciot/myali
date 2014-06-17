package com.alipay.mobile.security.authcenter.ui.login;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.alipay.mobile.a.a.a;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.login.bean.b;
import com.alipay.mobile.security.authcenter.ui.KeyboardHiddenAwareLayout;
import com.alipay.mobile.security.authcenter.ui.x;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.androidquery.AQuery;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="user_login_fragment")
public class UserLoginFragment extends BaseLoginFragment
  implements View.OnClickListener
{

  @ViewById(resName="user_defined_image")
  CircularImageView d;

  @ViewById(resName="mobile_pwd_input")
  APSixNumberPwdInputBox e;

  @ViewById(resName="gen_pwdInput")
  APInputBox f;

  @ViewById(resName="switchAccount")
  APButton g;

  @ViewById(resName="userAccount")
  APTextView h;

  @ViewById(resName="btnLogin")
  APButton i;

  @ViewById(resName="btnRegister")
  APButton j;

  @ViewById(resName="forgetPwd")
  APButton k;

  @ViewById(resName="loginRootLayout")
  KeyboardHiddenAwareLayout l;

  @ViewById(resName="login_scrollView")
  APScrollView m;
  private LoginInfo n;
  private AccountService t = (AccountService)this.a.getExtServiceByInterface(AccountService.class.getName());

  protected final void a(b paramb)
  {
    paramb.a(this.n.a());
    String str1;
    String str2;
    if (this.n.c())
    {
      str1 = this.e.getInputedPwd(-1);
      paramb.b(str1);
      if (this.r == null)
        break label101;
      str2 = this.r.getCheckCodeInput().getInputedText();
      label53: paramb.d(str2);
      paramb.e(this.s.d());
      if (!this.n.c())
        break label107;
    }
    label101: label107: for (String str3 = "wireless"; ; str3 = null)
    {
      paramb.c(str3);
      return;
      str1 = this.f.getInputedText();
      break;
      str2 = "";
      break label53;
    }
  }

  protected final void b(boolean paramBoolean)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("isIntroEnabled", true);
      localBundle.putString("source", "sign");
      this.a.startApp("20000008", "09999983", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("启动到余额宝app异常:").append(localAppLoadException.getMessage()).toString();
    }
  }

  protected final void c(boolean paramBoolean)
  {
    try
    {
      this.a.startApp("20000008", "20000054", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("启动到余额宝app异常:").append(localAppLoadException.getMessage()).toString();
    }
  }

  protected final void e()
  {
    if (this.e.getVisibility() == 0)
      this.e.getInputView().setText("");
    while (this.f.getVisibility() != 0)
      return;
    this.f.getEtContent().setText("");
  }

  final void f()
  {
    super.f();
    this.l.setKeyboardHiddenListener(new ah(this));
    this.m.setOnTouchListener(new ai(this));
    this.e.getEditText().addTextChangedListener(new aj(this));
    this.j.setOnClickListener(this);
    this.k.setOnClickListener(this);
    this.i.setOnClickListener(this);
    this.i.setEnabled(false);
    this.n = ((LoginInfo)getArguments().getParcelable("loginInfo"));
    this.g.setOnClickListener(this);
    String str1 = SecurityUtil.a(this.n.a(), "hideaccount");
    String str2 = this.n.e();
    APEditText localAPEditText;
    label207: String str3;
    if (this.n.c())
    {
      this.e.setVisibility(0);
      this.f.setVisibility(8);
      if (!TextUtils.isEmpty(str2))
        this.e.setPwdText(str2);
      str1 = a.a(str1);
      if (TextUtils.isEmpty(str2))
      {
        b();
        if (!this.n.c())
          break label463;
        localAPEditText = this.e.getEditText();
        a(localAPEditText);
      }
      this.h.setText(str1);
      if (!this.n.c())
        break label475;
      str3 = "mobile";
      label236: this.p = str3;
      String str4 = this.n.f();
      if (TextUtils.isEmpty(str4))
      {
        UserInfo localUserInfo = this.t.getUserInfoBySql(null, this.n.a());
        if (localUserInfo != null)
          str4 = localUserInfo.getUserAvatar();
      }
      if (TextUtils.isEmpty(str4))
        break label483;
      new AQuery(this.d).image(str4, true, true, 0, R.drawable.x, new ak(this));
    }
    while (true)
    {
      if (this.n.b())
        j();
      Drawable localDrawable = getResources().getDrawable(R.drawable.m);
      localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
      this.f.getInputName().setCompoundDrawables(localDrawable, null, null, null);
      this.f.getInputName().setVisibility(0);
      return;
      this.e.setVisibility(8);
      this.f.setVisibility(0);
      EditTextHasNullChecker localEditTextHasNullChecker = new EditTextHasNullChecker();
      this.f.getEtContent().addTextChangedListener(localEditTextHasNullChecker);
      localEditTextHasNullChecker.addNeedCheckView(this.f.getEtContent());
      localEditTextHasNullChecker.addNeedEnabledButton(this.i);
      this.f.setText(str2);
      break;
      label463: localAPEditText = this.f.getEtContent();
      break label207;
      label475: str3 = "alipay";
      break label236;
      label483: this.d.setImageResource(R.drawable.x);
    }
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 == R.id.fQ)
      a(true);
    do
    {
      return;
      if (i1 == R.id.Y)
      {
        a();
        return;
      }
      if (i1 == R.id.bi)
      {
        a("");
        return;
      }
    }
    while (i1 != R.id.X);
    b();
    j();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.UserLoginFragment
 * JD-Core Version:    0.6.2
 */