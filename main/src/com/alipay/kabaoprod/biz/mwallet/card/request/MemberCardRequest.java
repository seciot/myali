package com.alipay.kabaoprod.biz.mwallet.card.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class MemberCardRequest extends ToString
  implements Serializable
{
  public String appId;
  public String cardType;
  public String customerId;
  public String extend;
  public String openChannel;
  public String partnerId;
  public String tid;
  public String type;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest
 * JD-Core Version:    0.6.2
 */