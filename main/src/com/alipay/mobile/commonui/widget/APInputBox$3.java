package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.View.OnClickListener;

class APInputBox$3
  implements View.OnClickListener
{
  APInputBox$3(APInputBox paramAPInputBox)
  {
  }

  public void onClick(View paramView)
  {
    APInputBox.access$000(this.this$0).setText("");
    APInputBox.access$200(this.this$0).setVisibility(8);
    if (APInputBox.access$300(this.this$0) != null)
      APInputBox.access$300(this.this$0).onClick(APInputBox.access$200(this.this$0));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APInputBox.3
 * JD-Core Version:    0.6.2
 */