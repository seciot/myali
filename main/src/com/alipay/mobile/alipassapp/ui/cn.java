package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.kabaoprod.core.model.model.RemindInfo;
import com.alipay.mobile.common.utils.StringUtils;
import java.util.Date;

final class cn
  implements View.OnClickListener
{
  cn(AlipassRemindActivity paramAlipassRemindActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if ((AlipassRemindActivity.a(this.a) == null) || (!AlipassRemindActivity.b(this.a)) || ((StringUtils.equalsIgnoreCase(AlipassRemindActivity.c(this.a), "COUPON")) && (StringUtils.equals(AlipassRemindActivity.a(this.a).getRemindSwitch(), "1")) && (!AlipassRemindActivity.a(this.a, AlipassRemindActivity.d(this.a).getTime()))))
      return;
    this.a.a(AlipassRemindActivity.a(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cn
 * JD-Core Version:    0.6.2
 */