package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.rome.pushservice.PushSettingService;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="push_setting")
public class PushSettingActivity extends BaseActivity
{
  public static final String a = PushSettingActivity.class.getSimpleName();
  protected PushSettingService b;

  @ViewById(resName="pushSwitch")
  protected APRadioTableView c;

  @ViewById(resName="pushSwitchDescip")
  protected APTextView d;
  APAbsTableView.OnSwitchListener e = new PushSettingActivity.1(this);
  private String f = "true";

  @AfterViews
  protected final void a()
  {
    this.b = ((PushSettingService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PushSettingService.class.getName()));
    this.c.setEnabled(false);
    this.f = this.b.getPushState().toLowerCase();
    new StringBuilder("init() mPushSwitch=").append(this.f).toString();
    if (this.f.equalsIgnoreCase("true"));
    for (boolean bool = true; ; bool = false)
    {
      Boolean localBoolean = Boolean.valueOf(bool);
      this.c.getToggleButton().setChecked(localBoolean.booleanValue());
      if (!localBoolean.booleanValue())
        this.d.setVisibility(0);
      this.c.setOnSwitchListener(this.e);
      return;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    String str1;
    if (paramInt == 4)
    {
      if (!this.c.getToggleButton().isChecked())
        break label99;
      str1 = "true";
      if (str1.equals(this.f))
        break label112;
    }
    label99: label105: label112: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        if (!this.c.getToggleButton().isChecked())
          break label105;
      for (String str2 = "true"; ; str2 = "false")
      {
        this.b.setPushState(str2);
        new StringBuilder("onKeyDown() pushStatus=").append(str2).toString();
        finish();
        return super.onKeyDown(paramInt, paramKeyEvent);
        str1 = "false";
        break;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.PushSettingActivity
 * JD-Core Version:    0.6.2
 */