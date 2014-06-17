package com.alipay.aggrbillinfo.biz.mgnt.user.info;

import com.alipay.aggrbillinfo.biz.mgnt.bill.info.BankCardAndlatestBillResult;
import com.alipay.aggrbillinfo.biz.mgnt.bill.info.BillResult;
import com.alipay.aggrbillinfo.biz.mgnt.email.info.EmailAssociateBankInfo;
import com.alipay.aggrbillinfo.biz.mgnt.email.info.UserEmailInfo;
import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserStatusInfoResult extends Result
{
  public List<EmailAssociateBankInfo> allBanksOfUser = new ArrayList();
  public List<UserEmailInfo> allEmailsOfUser = new ArrayList();
  public Set<BankCardAndlatestBillResult> bankCardBills = new HashSet();
  public BillResult billResult;
  public String emailAccount;
  public String key;
  public String routeType;

  public List<EmailAssociateBankInfo> getAllBanksOfUser()
  {
    return this.allBanksOfUser;
  }

  public List<UserEmailInfo> getAllEmailsOfUser()
  {
    return this.allEmailsOfUser;
  }

  public Set<BankCardAndlatestBillResult> getBankCardBills()
  {
    return this.bankCardBills;
  }

  public BillResult getBillResult()
  {
    return this.billResult;
  }

  public String getEmailAccount()
  {
    return this.emailAccount;
  }

  public String getKey()
  {
    return this.key;
  }

  public String getRouteType()
  {
    return this.routeType;
  }

  public void setAllBanksOfUser(List<EmailAssociateBankInfo> paramList)
  {
    this.allBanksOfUser = paramList;
  }

  public void setAllEmailsOfUser(List<UserEmailInfo> paramList)
  {
    this.allEmailsOfUser = paramList;
  }

  public void setBankCardBills(Set<BankCardAndlatestBillResult> paramSet)
  {
    this.bankCardBills = paramSet;
  }

  public void setBillResult(BillResult paramBillResult)
  {
    this.billResult = paramBillResult;
  }

  public void setEmailAccount(String paramString)
  {
    this.emailAccount = paramString;
  }

  public void setKey(String paramString)
  {
    this.key = paramString;
  }

  public void setRouteType(String paramString)
  {
    this.routeType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.user.info.UserStatusInfoResult
 * JD-Core Version:    0.6.2
 */