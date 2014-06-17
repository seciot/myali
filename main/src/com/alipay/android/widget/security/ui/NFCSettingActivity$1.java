package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;
import com.alipay.mobile.framework.service.NFCService;

class NFCSettingActivity$1
  implements View.OnClickListener
{
  NFCSettingActivity$1(NFCSettingActivity paramNFCSettingActivity, ToggleButton paramToggleButton)
  {
  }

  public void onClick(View paramView)
  {
    if (this.a.isChecked())
    {
      if (!this.b.b.isNfcEnable(this.b))
      {
        this.b.alert("", "请先在系统设置开启手机NFC功能", "设置", new NFCSettingActivity.1.1(this), "取消", new NFCSettingActivity.1.2(this));
        return;
      }
      this.b.b.enableAlipayNfc(this.b);
      return;
    }
    this.b.b.disableAlipayNfc(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.NFCSettingActivity.1
 * JD-Core Version:    0.6.2
 */