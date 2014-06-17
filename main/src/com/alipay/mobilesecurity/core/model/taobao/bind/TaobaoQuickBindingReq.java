package com.alipay.mobilesecurity.core.model.taobao.bind;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class TaobaoQuickBindingReq extends ToString
{
  public String mobile;
  public String nick;

  public String getMobile()
  {
    return this.mobile;
  }

  public String getNick()
  {
    return this.nick;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }

  public void setNick(String paramString)
  {
    this.nick = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoQuickBindingReq
 * JD-Core Version:    0.6.2
 */