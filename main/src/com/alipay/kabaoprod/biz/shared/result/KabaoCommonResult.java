package com.alipay.kabaoprod.biz.shared.result;

import com.alipay.kabaoprod.core.model.promo.MobileRedirectWeaving;
import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class KabaoCommonResult extends ToString
  implements Serializable
{
  public String resultCode;
  public String resultDesc;
  public String resultView;
  public boolean success = false;
  public List<MobileRedirectWeaving> weavingList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult
 * JD-Core Version:    0.6.2
 */