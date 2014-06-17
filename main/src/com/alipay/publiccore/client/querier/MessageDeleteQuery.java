package com.alipay.publiccore.client.querier;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class MessageDeleteQuery extends ToString
  implements Serializable
{
  public String msgId;
  public String msgType;
  public String operationType;
  public String userId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.querier.MessageDeleteQuery
 * JD-Core Version:    0.6.2
 */