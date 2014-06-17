package com.alipay.mobileprod.biz.aapay.model.client;

import com.alipay.mobileprod.biz.aapay.model.AAPayUserInfo;
import java.io.Serializable;

public class BillState
  implements Serializable
{
  public boolean done = false;
  public AAPayUserInfo oppositeInfo;
  public String orderNo;
  public String payAmount;
  public boolean payToStranger = false;
  public String serverTime;
  public String sessionId;
  public boolean working = false;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.model.client.BillState
 * JD-Core Version:    0.6.2
 */