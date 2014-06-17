package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedProductInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class FixedProductDetailInfoQueryResult extends CommonResult
  implements Serializable
{
  public boolean hasAppointment;
  public FixedProductInfo productInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedProductDetailInfoQueryResult
 * JD-Core Version:    0.6.2
 */