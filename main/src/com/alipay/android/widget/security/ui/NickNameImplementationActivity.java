package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingService;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="nickname_implementation")
public class NickNameImplementationActivity extends BaseActivity
  implements View.OnClickListener
{

  @ViewById(resName="nicknameInput")
  APInputBox a;

  @ViewById(resName="ensureNickName")
  APButton b;
  private TaobaoBindingService c;
  private String d;
  private EditTextHasNullChecker e;

  @AfterViews
  final void a()
  {
    this.b.setOnClickListener(this);
    this.e = new EditTextHasNullChecker();
    this.a.getEtContent().addTextChangedListener(this.e);
    this.e.addNeedEnabledButton(this.b);
    this.e.addNeedCheckView(this.a.getEtContent());
  }

  @UiThread
  void a(MobileSecurityResult paramMobileSecurityResult)
  {
    dismissProgressDialog();
    if (paramMobileSecurityResult == null)
      return;
    String str1 = paramMobileSecurityResult.getResultCode();
    if ("200".equals(str1))
    {
      this.mMicroApplicationContext.Toast("创建账户并绑定成功", 1500);
      this.c.bindingFinish(paramMobileSecurityResult, true);
      finish();
      return;
    }
    String str2 = paramMobileSecurityResult.getMessage();
    if (("607".equals(str1)) || ("202".equals(str1)))
    {
      this.mMicroApplicationContext.Alert(null, str2, "确定", new NickNameImplementationActivity.1(this, paramMobileSecurityResult), null, null);
      return;
    }
    this.mMicroApplicationContext.Toast(str2, 1500);
    this.c.bindingFinish(paramMobileSecurityResult, false);
  }

  @Background
  void b()
  {
    a(this.c.taobaoQuickBinding(this.a.getInputedText().trim(), this.d));
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.aZ)
    {
      showProgressDialog(getText(R.string.cQ));
      b();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = ((TaobaoBindingService)this.mMicroApplicationContext.getExtServiceByInterface(TaobaoBindingService.class.getName()));
    this.d = getIntent().getStringExtra("phoneNo");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.NickNameImplementationActivity
 * JD-Core Version:    0.6.2
 */