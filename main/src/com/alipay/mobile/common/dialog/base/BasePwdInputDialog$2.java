package com.alipay.mobile.common.dialog.base;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APBasePwdInputBox;

class BasePwdInputDialog$2
  implements View.OnClickListener
{
  BasePwdInputDialog$2(BasePwdInputDialog paramBasePwdInputDialog)
  {
  }

  public void onClick(View paramView)
  {
    if (BasePwdInputDialog.access$000(this.this$0) != null)
    {
      String str = BasePwdInputDialog.access$100(this.this$0).getInputedPwd(-1);
      BasePwdInputDialog.access$200(this.this$0, BasePwdInputDialog.access$100(this.this$0));
      BasePwdInputDialog.access$000(this.this$0).onClose(true, str);
    }
    this.this$0.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.base.BasePwdInputDialog.2
 * JD-Core Version:    0.6.2
 */