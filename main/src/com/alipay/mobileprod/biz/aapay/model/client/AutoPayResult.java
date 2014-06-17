package com.alipay.mobileprod.biz.aapay.model.client;

import java.io.Serializable;

public class AutoPayResult
  implements Serializable
{
  public String message;
  public boolean overLimit = false;
  public boolean payResultUnknown = false;
  public boolean success = false;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.model.client.AutoPayResult
 * JD-Core Version:    0.6.2
 */