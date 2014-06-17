package com.alipay.mobilesecurity.core.model.taobao.bind;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class TaobaoBindingQueryRes extends MobileSecurityResult
{
  public int bindingStatus;
  public String bindingStatusMemo;

  public int getBindingStatus()
  {
    return this.bindingStatus;
  }

  public String getBindingStatusMemo()
  {
    return this.bindingStatusMemo;
  }

  public void setBindingStatus(int paramInt)
  {
    this.bindingStatus = paramInt;
  }

  public void setBindingStatusMemo(String paramString)
  {
    this.bindingStatusMemo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryRes
 * JD-Core Version:    0.6.2
 */