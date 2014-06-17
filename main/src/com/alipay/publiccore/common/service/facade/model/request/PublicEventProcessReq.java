package com.alipay.publiccore.common.service.facade.model.request;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;
import java.util.Map;

public class PublicEventProcessReq extends ToString
  implements Serializable
{
  public String accountId;
  public String actionParam;
  public String agreementId;
  public Map<String, String> extInfos;
  public String publicId;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.request.PublicEventProcessReq
 * JD-Core Version:    0.6.2
 */