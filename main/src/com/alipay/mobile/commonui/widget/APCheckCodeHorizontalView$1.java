package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.View.OnClickListener;

class APCheckCodeHorizontalView$1
  implements View.OnClickListener
{
  APCheckCodeHorizontalView$1(APCheckCodeHorizontalView paramAPCheckCodeHorizontalView)
  {
  }

  public void onClick(View paramView)
  {
    if (APCheckCodeHorizontalView.access$200(this.this$0) != null)
    {
      APCheckCodeHorizontalView.access$302(this.this$0, false);
      this.this$0.updateSendButtonEnableStatus();
      APCheckCodeHorizontalView.access$200(this.this$0).onSend(APCheckCodeHorizontalView.access$400(this.this$0));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView.1
 * JD-Core Version:    0.6.2
 */