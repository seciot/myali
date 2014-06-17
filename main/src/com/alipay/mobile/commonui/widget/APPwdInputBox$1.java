package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.View.OnClickListener;

class APPwdInputBox$1
  implements View.OnClickListener
{
  APPwdInputBox$1(APPwdInputBox paramAPPwdInputBox)
  {
  }

  public void onClick(View paramView)
  {
    View localView = this.this$0.getFocusedChild();
    if (localView != null)
      localView.clearFocus();
    APPwdInputBox.access$100(this.this$0, APPwdInputBox.access$000(this.this$0));
    APPwdInputBox.access$000(this.this$0).requestFocus();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPwdInputBox.1
 * JD-Core Version:    0.6.2
 */