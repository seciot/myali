package com.alipay.publiccore.biz.relation.msg.query;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.util.List;

public class BatchMessageDeleteQuery extends ToString
{
  public List<MessageDeleteQuery> deleteQueries;

  public List<MessageDeleteQuery> getDeleteQueries()
  {
    return this.deleteQueries;
  }

  public void setDeleteQueries(List<MessageDeleteQuery> paramList)
  {
    this.deleteQueries = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.query.BatchMessageDeleteQuery
 * JD-Core Version:    0.6.2
 */