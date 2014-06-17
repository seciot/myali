package com.alipay.publiccore.biz.relation.msg.result;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.util.Map;

public class BatchDeleteResult extends PublicResult
{
  public Map<String, Boolean> batchResult;

  public Map<String, Boolean> getBatchResult()
  {
    return this.batchResult;
  }

  public void setBatchResult(Map<String, Boolean> paramMap)
  {
    this.batchResult = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.BatchDeleteResult
 * JD-Core Version:    0.6.2
 */