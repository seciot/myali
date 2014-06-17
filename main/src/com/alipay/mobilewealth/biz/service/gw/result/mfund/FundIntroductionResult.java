package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.mfund.ImgInfo;
import java.io.Serializable;
import java.util.List;

public class FundIntroductionResult extends CommonResult
  implements Serializable
{
  public List<ImgInfo> imgUrls;
  public String opText;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundIntroductionResult
 * JD-Core Version:    0.6.2
 */