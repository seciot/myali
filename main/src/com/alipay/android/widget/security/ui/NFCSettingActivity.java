package com.alipay.android.widget.security.ui;

import android.content.Intent;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.NFCService;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="nfc_setting")
public class NFCSettingActivity extends BaseActivity
{

  @ViewById(resName="nfc")
  APRadioTableView a;
  NFCService b;

  final void a()
  {
    this.a.getmToggleButton().setChecked(this.b.isAlipayNfcEnable(this));
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.b.isNfcEnable(this))
      this.b.enableAlipayNfc(this);
    a();
  }

  protected void onResume()
  {
    super.onResume();
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.NFCSettingActivity
 * JD-Core Version:    0.6.2
 */