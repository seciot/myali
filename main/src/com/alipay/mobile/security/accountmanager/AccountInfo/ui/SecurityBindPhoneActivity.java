package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.res.Resources;
import android.os.Bundle;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="account_bind_phone")
public class SecurityBindPhoneActivity extends BaseActivity
{

  @ViewById(resName="action_bar")
  protected APTitleBar a;

  @ViewById(resName="bind_phone")
  protected APTableView b;

  @ViewById(resName="change_phone_num")
  protected APTableView c;
  private UserInfo d;

  @AfterViews
  protected final void a()
  {
    this.b.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
    this.b.setClickable(false);
    this.c.setOnClickListener(new w(this));
    this.a.setTitleText(getResources().getString(R.string.az));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onStart()
  {
    super.onStart();
    this.d = UserInfoHelper.getInstance().getUserInfo(this.mApp);
    if (this.d == null)
    {
      this.mApp.getMicroApplicationContext().startApp(null, "20000008", null);
      return;
    }
    this.b.setRightText(SecurityUtil.a(this.d.getMobileNumber(), "hideaccount"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.SecurityBindPhoneActivity
 * JD-Core Version:    0.6.2
 */