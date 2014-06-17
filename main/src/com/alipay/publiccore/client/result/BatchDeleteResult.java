package com.alipay.publiccore.client.result;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.io.Serializable;
import java.util.Map;

public class BatchDeleteResult extends PublicResult
  implements Serializable
{
  public Map<String, Boolean> batchResult;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.BatchDeleteResult
 * JD-Core Version:    0.6.2
 */