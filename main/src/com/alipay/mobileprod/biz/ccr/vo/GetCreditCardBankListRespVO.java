package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.biz.shared.ccr.domain.BankInfo;
import com.alipay.mobileprod.core.model.ccr.BaseRespVO;
import java.util.List;

public class GetCreditCardBankListRespVO extends BaseRespVO
{
  public List<BankInfo> bankInfoList;

  public List<BankInfo> getBankInfoList()
  {
    return this.bankInfoList;
  }

  public void setBankInfoList(List<BankInfo> paramList)
  {
    this.bankInfoList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetCreditCardBankListRespVO
 * JD-Core Version:    0.6.2
 */