package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class BaseQuery extends ToString
  implements Serializable
{
  public String apiVersion;
  public String channelPackage;
  public String clientVersion;
  public String terminal;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.BaseQuery
 * JD-Core Version:    0.6.2
 */