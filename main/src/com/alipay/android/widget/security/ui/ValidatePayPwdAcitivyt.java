package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View.OnClickListener;
import com.alipay.android.widget.security.app.IndependentPwdApp;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AccountCallBack;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="validate_pay_pwd")
public class ValidatePayPwdAcitivyt extends BaseActivity
{
  private static final String f = ValidatePayPwdAcitivyt.class.getName();

  @ViewById(resName="pay_pwd")
  protected APInputBox a;

  @ViewById(resName="next_step_btn")
  protected APButton b;
  Bundle c;
  View.OnClickListener d = new ValidatePayPwdAcitivyt.2(this);
  AccountCallBack e = new ValidatePayPwdAcitivyt.3(this);
  private AccountService g;
  private UserInfo h;
  private EditTextHasNullChecker i = new EditTextHasNullChecker();

  @AfterViews
  protected final void a()
  {
    this.b.setOnClickListener(this.d);
    this.a.getEtContent().addTextChangedListener(this.i);
    this.i.addNeedCheckView(this.a.getEtContent());
    this.i.addNeedEnabledButton(this.b);
    this.b.postDelayed(new ValidatePayPwdAcitivyt.1(this), 500L);
  }

  @Background
  protected void b()
  {
    this.g.payPwdValidate(this.h.getLogonId(), this.a.getInputedText(), this.e);
  }

  @UiThread
  protected void c()
  {
    this.a.setText("");
    Intent localIntent = new Intent(this, IndependentPwdSettingActivity_.class);
    if (this.c != null)
    {
      new StringBuilder("INDEPENDENT_IS_RESET is: ").append(this.c.getBoolean("IS_RESET", false)).toString();
      localIntent.putExtra("IS_RESET", this.c.getBoolean("IS_RESET", false));
      if (this.c.getString("fromWhich") != null)
        localIntent.putExtra("fromWhich", this.c.getString("fromWhich"));
    }
    this.mMicroApplicationContext.startActivity(this.mApp, localIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.h = UserInfoHelper.getInstance().getUserInfo(this.mApp);
    this.c = ((IndependentPwdApp)this.mApp).getParams();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ValidatePayPwdAcitivyt
 * JD-Core Version:    0.6.2
 */