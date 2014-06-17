package com.alipay.mobile.mobilerechargeapp.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APTextView;

final class c
  implements View.OnClickListener
{
  c(APInputBoxAutoC paramAPInputBoxAutoC)
  {
  }

  public final void onClick(View paramView)
  {
    APInputBoxAutoC.access$000(this.a).setText("");
    APInputBoxAutoC.access$200(this.a).setText("");
    APInputBoxAutoC.access$300(this.a).setVisibility(8);
    if (APInputBoxAutoC.access$400(this.a) != null)
      APInputBoxAutoC.access$400(this.a).onClick(APInputBoxAutoC.access$300(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.view.c
 * JD-Core Version:    0.6.2
 */