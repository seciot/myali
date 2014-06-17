package com.alipay.mobilesecurity.core.model.account.certify;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.io.Serializable;

public class CardInfo extends ToString
  implements Serializable
{
  public String bankName;
  public String cardNo;
  public String certNo;
  public String dimcertNo;
  public String logo;
  public String name;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.certify.CardInfo
 * JD-Core Version:    0.6.2
 */