package com.alipay.mobile.framework.msg;

import com.alipay.mobile.framework.MicroDescription;

public class BroadcastReceiverDescription extends MicroDescription
{
  private String[] a;

  public String[] getMsgCode()
  {
    return this.a;
  }

  public void setMsgCode(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.msg.BroadcastReceiverDescription
 * JD-Core Version:    0.6.2
 */