package com.alipay.android.widget.security.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.service.ext.security.AccountCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.ResultBean;

class ValidatePayPwdAcitivyt$3
  implements AccountCallBack
{
  ValidatePayPwdAcitivyt$3(ValidatePayPwdAcitivyt paramValidatePayPwdAcitivyt)
  {
  }

  public void cleanAccountCallBack(ResultBean paramResultBean)
  {
  }

  public void loginPwdValidateCallBack(ResultBean paramResultBean)
  {
    this.a.dismissProgressDialog();
    if (paramResultBean != null)
    {
      if (paramResultBean.isSuccess())
      {
        this.a.c();
        return;
      }
      if (("190".equals(paramResultBean.getResultCode())) || ("191".equals(paramResultBean.getResultCode())))
      {
        this.a.alert(null, paramResultBean.getMessage(), this.a.getResources().getString(R.string.bi), null, null, null);
        return;
      }
      if ("192".equals(paramResultBean.getResultCode()))
      {
        this.a.alert(null, paramResultBean.getMessage(), this.a.getResources().getString(R.string.bi), new ValidatePayPwdAcitivyt.3.1(this), this.a.getResources().getString(R.string.as), new ValidatePayPwdAcitivyt.3.2(this));
        return;
      }
      this.a.toast(paramResultBean.getMessage(), 1);
      return;
    }
    this.a.toast(this.a.getResources().getString(R.string.bW), 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ValidatePayPwdAcitivyt.3
 * JD-Core Version:    0.6.2
 */