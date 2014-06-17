package com.alipay.mobileprod.biz.aapay.model.client;

import com.alipay.mobileprod.biz.aapay.model.AAPayOrderInfo;
import java.io.Serializable;
import java.util.List;

public class BillCreateResult
  implements Serializable
{
  public List<AAPayOrderInfo> billList;
  public String code;
  public String message;
  public boolean success;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.model.client.BillCreateResult
 * JD-Core Version:    0.6.2
 */