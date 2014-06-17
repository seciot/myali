package com.alipay.mobilewealth.core.model.models.bank;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.Map;

public class BaseBankCard extends ToString
  implements Serializable
{
  public String applyTime;
  public String bankId;
  public String cardNo;
  public String cardNoLast4;
  public String cardType;
  public String certNo;
  public String certNoHiding;
  public String certType;
  public Map<String, String> extraInfo;
  public String holderName;
  public String instId;
  public String instLogUrl;
  public String instName;
  public boolean isOwner;
  public String mobile;
  public String signId;
  public String sourceChannel;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.bank.BaseBankCard
 * JD-Core Version:    0.6.2
 */