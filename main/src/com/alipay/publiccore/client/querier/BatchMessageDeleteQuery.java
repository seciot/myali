package com.alipay.publiccore.client.querier;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class BatchMessageDeleteQuery extends ToString
  implements Serializable
{
  public List<MessageDeleteQuery> deleteQueries;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.querier.BatchMessageDeleteQuery
 * JD-Core Version:    0.6.2
 */