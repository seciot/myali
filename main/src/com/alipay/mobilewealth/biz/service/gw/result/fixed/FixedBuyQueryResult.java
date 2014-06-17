package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedBuyQueryResult extends CommonResult
  implements Serializable
{
  public List<BizItem> bizItems;
  public String buttonText;
  public BizItem contract;
  public String financialSerialNo;
  public String tradeNo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedBuyQueryResult
 * JD-Core Version:    0.6.2
 */