package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.View.OnClickListener;

class APSixNumberPwdInputBox$1
  implements View.OnClickListener
{
  APSixNumberPwdInputBox$1(APSixNumberPwdInputBox paramAPSixNumberPwdInputBox)
  {
  }

  public void onClick(View paramView)
  {
    View localView = this.this$0.getFocusedChild();
    if (localView != null)
      localView.clearFocus();
    APSixNumberPwdInputBox.access$100(this.this$0, APSixNumberPwdInputBox.access$000(this.this$0));
    APSixNumberPwdInputBox.access$000(this.this$0).requestFocus();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.1
 * JD-Core Version:    0.6.2
 */