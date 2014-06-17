package com.alipay.aggrbillinfo.biz.dataservice.email;

import com.alipay.aggrbillinfo.biz.mgnt.email.info.BankOparationInfoInEmailResult;
import com.alipay.aggrbillinfo.biz.mgnt.email.info.EmailAssociateBankInfo;
import com.alipay.aggrbillinfo.biz.mgnt.email.info.EmailAssociateBankInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import java.util.List;

public abstract interface EmailAssociateBankService
{
  @OperationType("alipay.mobile.aggrbillinfo.emailAssociateBank.confirmBankInEmail")
  public abstract BankOparationInfoInEmailResult confirmBankInEmail(List<EmailAssociateBankInfo> paramList);

  @OperationType("alipay.mobile.aggrbillinfo.emailAssociateBank.deleteBankCard")
  public abstract BankOparationInfoInEmailResult deleteBankCard(String paramString1, String paramString2, String paramString3);

  @OperationType("alipay.mobile.aggrbillinfo.emailAssociateBank.findAllBankInfosByEmail")
  public abstract EmailAssociateBankInfoResult findAllBankInfosByEmail(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.dataservice.email.EmailAssociateBankService
 * JD-Core Version:    0.6.2
 */