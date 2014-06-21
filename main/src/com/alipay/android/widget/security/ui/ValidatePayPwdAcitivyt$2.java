package com.alipay.android.widget.security.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;

class ValidatePayPwdAcitivyt$2
  implements View.OnClickListener
{
  ValidatePayPwdAcitivyt$2(ValidatePayPwdAcitivyt paramValidatePayPwdAcitivyt)
  {
  }

  public void onClick(View paramView)
  {
    this.a.showProgressDialog(this.a.getResources().getString(R.string.bF), false, null);
    this.a.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ValidatePayPwdAcitivyt.2
 * JD-Core Version:    0.6.2
 */