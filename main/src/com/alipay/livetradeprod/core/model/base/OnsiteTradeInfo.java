package com.alipay.livetradeprod.core.model.base;

import com.alipay.livetradeprod.core.model.ToString;
import java.io.Serializable;

public class OnsiteTradeInfo extends ToString
  implements Serializable
{
  public String action;
  public String amount;
  public String dynamicId;
  public String headImageUrl;
  public boolean lottery;
  public String memo;
  public String payerAccount;
  public String payerName;
  public String tradeNo;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.base.OnsiteTradeInfo
 * JD-Core Version:    0.6.2
 */