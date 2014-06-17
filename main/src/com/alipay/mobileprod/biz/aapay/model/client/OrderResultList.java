package com.alipay.mobileprod.biz.aapay.model.client;

import com.alipay.mobileprod.biz.aapay.model.AAPayOrderInfo;
import java.io.Serializable;
import java.util.List;

public class OrderResultList
  implements Serializable
{
  public List<AAPayOrderInfo> payResult;
  public String serverTime;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.model.client.OrderResultList
 * JD-Core Version:    0.6.2
 */