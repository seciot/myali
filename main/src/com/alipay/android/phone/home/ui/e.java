package com.alipay.android.phone.home.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.phone.home.util.HomeLogAgentUtil;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;

final class e
  implements View.OnClickListener
{
  e(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void onClick(View paramView)
  {
    HeaderAreaLayout.getBundle(this.a).setVisibility(8);
    HeaderAreaLayout.b(this.a).setVisibility(8);
    HeaderAreaLayout.c(this.a);
    HomeLogAgentUtil.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.e
 * JD-Core Version:    0.6.2
 */