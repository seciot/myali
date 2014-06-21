package com.alipay.android.widget.security.ui;

import com.alipay.mobile.framework.service.ext.security.AccountCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.ResultBean;

class SecurityPasswordManagerActivity$8
  implements AccountCallBack
{
  SecurityPasswordManagerActivity$8(SecurityPasswordManagerActivity paramSecurityPasswordManagerActivity, boolean paramBoolean)
  {
  }

  public void cleanAccountCallBack(ResultBean paramResultBean)
  {
  }

  public void loginPwdValidateCallBack(ResultBean paramResultBean)
  {
    this.b.dismissProgressDialog();
    if (paramResultBean != null)
    {
      if (paramResultBean.isSuccess())
      {
        this.b.getInitLevel();
        return;
      }
      this.b.v(paramResultBean, this.a);
      return;
    }
    this.b.getBundle(this.a);
    this.b.toast("网络无法连接，请检查您的网络", 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity.8
 * JD-Core Version:    0.6.2
 */