package com.alipay.mobile.security.authcenter.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;

final class k
  implements View.OnClickListener
{
  k(CompleteUserInfoActivity paramCompleteUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.e.getCheckBox().isChecked())
      this.a.d.setInputType(1);
    while (true)
    {
      CompleteUserInfoActivity.b(this.a);
      return;
      this.a.d.setInputType(129);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.k
 * JD-Core Version:    0.6.2
 */