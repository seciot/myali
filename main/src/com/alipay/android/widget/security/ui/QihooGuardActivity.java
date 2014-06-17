package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.QihooGuardService;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="qihoo_setting")
public class QihooGuardActivity extends BaseActivity
{

  @ViewById(resName="qihooSwitch")
  protected APRadioTableView a;

  @ViewById(resName="qihooSwitchCover")
  protected APImageView b;
  APAbsTableView.OnSwitchListener c = new QihooGuardActivity.1(this);
  private String d = "QihooGuardActivity";
  private boolean e = false;
  private Handler f = new QihooGuardActivity.2(this);

  private void b()
  {
    if (this.e)
      return;
    this.e = true;
    showProgressDialog("正在获取保护状态", true, new QihooGuardActivity.3(this));
    new Thread(new QihooGuardActivity.4(this)).start();
  }

  @AfterViews
  protected final void a()
  {
    if (QihooGuardService.isSupportSmsGuard())
      b();
    while (true)
    {
      this.a.getToggleButton().setChecked(QihooGuardService.isQihooGuardOpened());
      this.a.setOnSwitchListener(this.c);
      return;
      dismissProgressDialog();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    QihooGuardService.isQihooGuardOpened();
  }

  protected void onResume()
  {
    QihooGuardService.isQihooGuardOpened();
    if (QihooGuardService.isSupportSmsGuard())
      b();
    while (true)
    {
      this.a.getToggleButton().setChecked(QihooGuardService.isQihooGuardOpened());
      super.onResume();
      return;
      dismissProgressDialog();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.QihooGuardActivity
 * JD-Core Version:    0.6.2
 */