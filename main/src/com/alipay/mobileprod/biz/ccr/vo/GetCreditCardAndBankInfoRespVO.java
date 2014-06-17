package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.biz.shared.ccr.domain.BankInfo;
import com.alipay.mobileprod.biz.shared.ccr.domain.BillInfo;
import com.alipay.mobileprod.biz.shared.ccr.domain.UserCardInfo;
import com.alipay.mobileprod.core.model.ccr.BaseRespVO;

public class GetCreditCardAndBankInfoRespVO extends BaseRespVO
{
  public BankInfo bankInfo;
  public BillInfo billInfo;
  public UserCardInfo userCardInfo;

  public BankInfo getBankInfo()
  {
    return this.bankInfo;
  }

  public BillInfo getBillInfo()
  {
    return this.billInfo;
  }

  public UserCardInfo getUserCardInfo()
  {
    return this.userCardInfo;
  }

  public void setBankInfo(BankInfo paramBankInfo)
  {
    this.bankInfo = paramBankInfo;
  }

  public void setBillInfo(BillInfo paramBillInfo)
  {
    this.billInfo = paramBillInfo;
  }

  public void setUserCardInfo(UserCardInfo paramUserCardInfo)
  {
    this.userCardInfo = paramUserCardInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetCreditCardAndBankInfoRespVO
 * JD-Core Version:    0.6.2
 */