package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import com.alipay.android.widget.security.a.d;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.PWDInputListener;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.FormatValidationUtil;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity
public class IndependentPwdSettingActivity extends BaseActivity
  implements APSixNumberPwdInputBox.PWDInputListener
{
  protected AuthService a;
  private APSixNumberPwdInputBox b;
  private APTextView c;
  private String d;
  private String e;
  private d f;
  private APButton g;
  private String h;
  private boolean i;
  private String j;
  private int k = 0;

  private void a()
  {
    this.c.setText(getResources().getText(R.string.cK));
    this.b.clearInput();
    this.b.clearPwd();
    this.g.setVisibility(8);
  }

  @UiThread
  void a(MobileSecurityResult paramMobileSecurityResult)
  {
    String str;
    if (paramMobileSecurityResult != null)
    {
      str = paramMobileSecurityResult.getResultCode();
      if (paramMobileSecurityResult.isSuccess())
        alert(getResources().getString(R.string.bU), getResources().getString(R.string.bV), "确定", new IndependentPwdSettingActivity.2(this), null, null);
    }
    else
    {
      return;
    }
    if ("700".equals(str))
    {
      alert(null, paramMobileSecurityResult.getMessage(), "拨打", new IndependentPwdSettingActivity.3(this), "取消", new IndependentPwdSettingActivity.4(this));
      return;
    }
    alert(null, paramMobileSecurityResult.getMessage(), "确定", new IndependentPwdSettingActivity.5(this, str), null, null);
  }

  @Background
  void a(String paramString)
  {
    showProgressDialog(null, false, null);
    UserInfo localUserInfo = this.a.getUserInfo();
    if (localUserInfo != null);
    try
    {
      MobileSecurityResult localMobileSecurityResult = this.f.a(paramString, localUserInfo.getLogonId(), this.i);
      dismissProgressDialog();
      a(localMobileSecurityResult);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      this.h = localIntent.getStringExtra("idCardNo");
      this.i = localIntent.getBooleanExtra("IS_RESET", false);
      this.j = localIntent.getStringExtra("fromWhich");
      new StringBuilder("INDEPENDENT_IS_RESET: ").append(this.i).append(" fromWhich:").append(this.j).toString();
    }
    setContentView(R.layout.P);
    this.k = 0;
    this.c = ((APTextView)findViewById(R.id.cX));
    this.b = ((APSixNumberPwdInputBox)findViewById(R.id.fD));
    this.g = ((APButton)findViewById(R.id.gq));
    this.b.setPwdInputListener(this);
    this.f = new d(this.mApp);
    this.a = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.g.setOnClickListener(new IndependentPwdSettingActivity.1(this));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.k > 0))
    {
      a();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    int m = 1;
    if (paramEditable != null)
    {
      this.k = paramInt;
      if (paramEditable.length() != 6)
        break label252;
      if (paramInt != m)
        break label188;
      this.d = this.b.getInputedPwd(paramInt);
      str1 = this.d;
      localUserInfo = this.a.getUserInfo();
      if ((!FormatValidationUtil.d(str1)) && (!FormatValidationUtil.c(str1)))
        break label134;
      str2 = "请不要使用连续的数字";
      if (str2 != null)
      {
        toast(str2, 0);
        m = 0;
      }
      if (m == 0)
        break label178;
      this.c.setText(getResources().getText(R.string.X));
      this.g.setEnabled(false);
      this.g.setVisibility(0);
      this.b.clearInput();
    }
    label134: label178: label188: 
    while (paramInt < 2)
      while (true)
      {
        String str1;
        UserInfo localUserInfo;
        String str2;
        return;
        if (FormatValidationUtil.b(str1))
        {
          str2 = "请不要使用相同的数字";
        }
        else
        {
          boolean bool = FormatValidationUtil.a(localUserInfo.getMobileNumber(), str1);
          str2 = null;
          if (bool)
          {
            str2 = "请不要使用手机号码中的连续数字";
            continue;
            this.b.clearPwd();
          }
        }
      }
    this.e = this.b.getInputedPwd(paramInt);
    if (this.e.equals(this.d))
    {
      this.g.setEnabled(m);
      return;
    }
    toast("密码不一致，请重新输入", 0);
    this.b.clearInput();
    this.b.clearPwdByIndex(paramInt);
    return;
    label252: this.g.setEnabled(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity
 * JD-Core Version:    0.6.2
 */