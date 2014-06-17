package com.alipay.mobilewealth.biz.service.gw.result.bollywood;

import com.alipay.mobilewealth.biz.service.gw.model.bollywood.BollywoodProductInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.common.ShareInfo;
import java.io.Serializable;

public class BollywoodProductDetailResult extends CommonResult
  implements Serializable
{
  public BollywoodProductInfo productModel;
  public String shareChannel;
  public ShareInfo shareInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodProductDetailResult
 * JD-Core Version:    0.6.2
 */