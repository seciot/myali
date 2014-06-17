package com.alipay.mobile.security.gesture.component;

import android.content.res.Resources;
import com.alipay.mobile.a.b;
import com.alipay.mobile.common.helper.HideUtils;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class c
  implements l
{
  c(AlipayPattern paramAlipayPattern, UserInfo paramUserInfo)
  {
  }

  public final void a()
  {
    if (AlipayPattern.access$000(this.b) != null)
    {
      AlipayPattern.access$000(this.b).setText(HideUtils.hide(this.a.getLogonId(), "hideaccount"));
      AlipayPattern.access$000(this.b).setTextColor(this.b.getResources().getColor(b.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.c
 * JD-Core Version:    0.6.2
 */