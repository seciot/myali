package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.bank.BaseBankCard;
import com.alipay.mobilewealth.core.model.models.mfund.FundInfo;
import com.alipay.mobilewealth.core.model.models.mfund.FundUserInfo;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class FundOpenInfoResult extends CommonResult
  implements Serializable
{
  public List<BaseBankCard> bankCards;
  public Map<String, String> extraInfo;
  public FundInfo fundInfo;
  public FundUserInfo fundUserInfo;
  public boolean hasFundAccount;
  public String jumpIndex;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundOpenInfoResult
 * JD-Core Version:    0.6.2
 */