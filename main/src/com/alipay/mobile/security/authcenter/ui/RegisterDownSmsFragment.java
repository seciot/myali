package com.alipay.mobile.security.authcenter.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.CheckBox;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.security.authcenter.a.f;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="register_mobile")
public class RegisterDownSmsFragment extends BaseRegisterUserFragment
{
  public static final String c = RegisterDownSmsFragment.class.getSimpleName();

  @ViewById(resName="register_phoneNubInputBox")
  protected APInputBox d;

  @ViewById(resName="register_CheckboxWithLinkText")
  protected APCheckboxWithLinkText e;

  @ViewById(resName="register_mtSmsButton")
  protected APButton f;
  private f g;

  @AfterViews
  protected final void a()
  {
    this.d.setTextFormatter(new APSplitTextFormatter("3,8"));
    this.f.setOnClickListener(new ad(this));
    this.d.addTextChangedListener(new af(this));
    this.e.setTextViewUri("https://mgw.alipay.com/agreement.htm");
    this.e.getCheckBox().setChecked(true);
    this.e.getCheckBox().setOnCheckedChangeListener(new ah(this));
    SecurityUtil.a(this.b, this.e, "https://mgw.alipay.com/agreement.htm", getResources().getString(R.string.ck));
    this.d.postDelayed(new ag(this), 200L);
    this.d.setInputType(3);
    this.f.setEnabled(false);
  }

  @UiThread
  protected void a(SendSmsCodeRes paramSendSmsCodeRes, String paramString)
  {
    AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
    if (paramSendSmsCodeRes == null)
    {
      AlipayApplication.getInstance().getMicroApplicationContext().Toast(getResources().getString(R.string.cj), 1);
      return;
    }
    int i = paramSendSmsCodeRes.resultStatus;
    if (i == 1000)
    {
      SecurityUtil.b(this.a, this.d.getEtContent());
      this.a.a(paramString);
      this.a.b(40);
      return;
    }
    if (i == 1107)
    {
      AlipayApplication.getInstance().getMicroApplicationContext().Alert(null, paramSendSmsCodeRes.memo, getResources().getString(R.string.af), new ai(this), null, null);
      return;
    }
    AlipayApplication.getInstance().getMicroApplicationContext().Toast(paramSendSmsCodeRes.memo, 1);
  }

  @Background
  protected void a(String paramString)
  {
    try
    {
      a(this.g.a(paramString), paramString);
      return;
    }
    catch (RpcException localRpcException)
    {
      AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
      throw localRpcException;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = new f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.RegisterDownSmsFragment
 * JD-Core Version:    0.6.2
 */