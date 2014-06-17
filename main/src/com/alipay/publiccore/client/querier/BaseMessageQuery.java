package com.alipay.publiccore.client.querier;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class BaseMessageQuery extends ToString
  implements Serializable
{
  public String apiVersion;
  public String channelPackage;
  public String clientVersion;
  public String terminal;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.querier.BaseMessageQuery
 * JD-Core Version:    0.6.2
 */