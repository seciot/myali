package com.alipay.mobile.alipassapp.ui;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.alipay.kabaoprod.core.model.model.RemindInfo;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRadioTableView;

final class co
  implements CompoundButton.OnCheckedChangeListener
{
  co(AlipassRemindActivity paramAlipassRemindActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    RemindInfo localRemindInfo = AlipassRemindActivity.a(this.a);
    String str;
    int i;
    label38: APRadioTableView localAPRadioTableView;
    if (paramBoolean)
    {
      str = "1";
      localRemindInfo.setRemindSwitch(str);
      APLinearLayout localAPLinearLayout = AlipassRemindActivity.e(this.a);
      if (!paramBoolean)
        break label77;
      i = 0;
      localAPLinearLayout.setVisibility(i);
      localAPRadioTableView = AlipassRemindActivity.f(this.a);
      if (!paramBoolean)
        break label84;
    }
    label77: label84: for (int j = 17; ; j = 16)
    {
      localAPRadioTableView.setType(j);
      return;
      str = "0";
      break;
      i = 8;
      break label38;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.co
 * JD-Core Version:    0.6.2
 */