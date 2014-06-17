package com.alipay.mobilewealth.biz.service.gw.result.home;

import com.alipay.mobilewealth.biz.service.gw.model.home.AccountHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.BankHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.BollywoodHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.CharityHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.FixedHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.FundHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.PcreditHomeAsset;
import com.alipay.mobilewealth.biz.service.gw.model.home.UcrHomeAsset;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class WealthHomeResult extends CommonResult
  implements Serializable
{
  public AccountHomeAsset accountHomeAsset;
  public BankHomeAsset bankHomeAsset;
  public BollywoodHomeAsset bollywoodHomeAsset;
  public CharityHomeAsset charityHomeAsset;
  public FixedHomeAsset fixedHomeAsset;
  public FundHomeAsset fundHomeAsset;
  public PcreditHomeAsset pcreditHomeAsset;
  public UcrHomeAsset ucrHomeAsset;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeResult
 * JD-Core Version:    0.6.2
 */