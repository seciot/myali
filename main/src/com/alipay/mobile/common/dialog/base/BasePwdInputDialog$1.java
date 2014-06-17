package com.alipay.mobile.common.dialog.base;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APBasePwdInputBox;

class BasePwdInputDialog$1
  implements View.OnClickListener
{
  BasePwdInputDialog$1(BasePwdInputDialog paramBasePwdInputDialog)
  {
  }

  public void onClick(View paramView)
  {
    if (BasePwdInputDialog.access$000(this.this$0) != null)
    {
      String str = BasePwdInputDialog.access$100(this.this$0).getInputedPwd(-1);
      BasePwdInputDialog.access$200(this.this$0, BasePwdInputDialog.access$100(this.this$0));
      BasePwdInputDialog.access$000(this.this$0).onClose(false, str);
    }
    this.this$0.cancel();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.base.BasePwdInputDialog.1
 * JD-Core Version:    0.6.2
 */