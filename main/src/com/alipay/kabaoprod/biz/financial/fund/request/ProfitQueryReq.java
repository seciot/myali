package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class ProfitQueryReq extends ToString
  implements Serializable
{
  public String oprType;
  public int pageCount = 30;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.ProfitQueryReq
 * JD-Core Version:    0.6.2
 */