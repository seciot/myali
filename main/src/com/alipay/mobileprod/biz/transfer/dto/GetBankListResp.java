package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.biz.transfer.vo.BankVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

public class GetBankListResp extends BaseRespVO
{
  public List<BankVO> bankList;

  public List<BankVO> getBankList()
  {
    return this.bankList;
  }

  public void setBankList(List<BankVO> paramList)
  {
    this.bankList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.GetBankListResp
 * JD-Core Version:    0.6.2
 */