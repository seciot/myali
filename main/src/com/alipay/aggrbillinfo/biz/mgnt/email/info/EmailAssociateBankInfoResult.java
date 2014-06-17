package com.alipay.aggrbillinfo.biz.mgnt.email.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import java.util.ArrayList;
import java.util.List;

public class EmailAssociateBankInfoResult extends Result
{
  public List<EmailAssociateBankInfo> banks = new ArrayList();

  public List<EmailAssociateBankInfo> getBanks()
  {
    return this.banks;
  }

  public void setBanks(List<EmailAssociateBankInfo> paramList)
  {
    this.banks = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.email.info.EmailAssociateBankInfoResult
 * JD-Core Version:    0.6.2
 */