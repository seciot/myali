package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.IndexPassDetail;
import java.io.Serializable;
import java.util.Map;

public class IndexPassResult extends KabaoCommonResult
  implements Serializable
{
  public IndexPassDetail cardDetail;
  public IndexPassDetail couponDetail;
  public Map<String, IndexPassDetail> details;
  public boolean isMark = false;
  public IndexPassDetail travelDetail;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.IndexPassResult
 * JD-Core Version:    0.6.2
 */