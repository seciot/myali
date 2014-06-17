package com.alipay.mobile.common.promotion.intercept.action;

import com.alipay.mobile.common.promotion.intercept.desc.ActionDesc;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class BaseAction
{
  protected ActionDesc desc;

  public BaseAction()
  {
  }

  public BaseAction(ActionDesc paramActionDesc)
  {
    this.desc = paramActionDesc;
  }

  public void exec()
  {
  }

  protected MicroApplicationContext getMicroAppContext()
  {
    return AlipayApplication.getInstance().getMicroApplicationContext();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.action.BaseAction
 * JD-Core Version:    0.6.2
 */