package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.View.OnClickListener;

class APCheckCodeVerticalView$1
  implements View.OnClickListener
{
  APCheckCodeVerticalView$1(APCheckCodeVerticalView paramAPCheckCodeVerticalView)
  {
  }

  public void onClick(View paramView)
  {
    if (APCheckCodeVerticalView.access$200(this.this$0) != null)
    {
      APCheckCodeVerticalView.access$302(this.this$0, false);
      this.this$0.updateSendButtonEnableStatus();
      APCheckCodeVerticalView.access$200(this.this$0).onSend(APCheckCodeVerticalView.access$400(this.this$0));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeVerticalView.1
 * JD-Core Version:    0.6.2
 */