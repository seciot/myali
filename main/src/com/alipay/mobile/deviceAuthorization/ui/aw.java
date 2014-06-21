package com.alipay.mobile.deviceAuthorization.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;

final class aw
  implements View.OnClickListener
{
  aw(TempAuthActivity paramTempAuthActivity, PrepareApproveRes paramPrepareApproveRes)
  {
  }

  public final void onClick(View paramView)
  {
    String str2;
    String str1;
    if ((TempAuthActivity.getBundle(this.b) != null) && (TempAuthActivity.getBundle(this.b).getVisibility() == 0))
    {
      str2 = TempAuthActivity.getBundle(this.b).getInputedText();
      str1 = "PAYMENTPASSWORD";
    }
    while (true)
    {
      this.b.a(this.a.needMobileSp, str2, str1, null);
      return;
      if ((TempAuthActivity.b(this.b) != null) && (TempAuthActivity.b(this.b).getVisibility() == 0))
      {
        str2 = TempAuthActivity.b(this.b).getInputedPwd(-1);
        str1 = "MOBILEPASSWORD";
      }
      else
      {
        str1 = null;
        str2 = null;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.aw
 * JD-Core Version:    0.6.2
 */