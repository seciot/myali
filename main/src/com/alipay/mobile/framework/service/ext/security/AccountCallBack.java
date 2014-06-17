package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.security.bean.ResultBean;

public abstract interface AccountCallBack
{
  public abstract void cleanAccountCallBack(ResultBean paramResultBean);

  public abstract void loginPwdValidateCallBack(ResultBean paramResultBean);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.AccountCallBack
 * JD-Core Version:    0.6.2
 */