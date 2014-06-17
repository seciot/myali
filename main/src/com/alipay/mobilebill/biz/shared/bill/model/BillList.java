package com.alipay.mobilebill.biz.shared.bill.model;

import com.alipay.mobile.framework.service.ext.BizResult;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BillList
{
  public List<MonthBill> billList;
  public String customerType;
  public Map<String, List<String>> extendField = new HashMap();
  public BizResult result;

  public List<MonthBill> getBillList()
  {
    return this.billList;
  }

  public String getCustomerType()
  {
    return this.customerType;
  }

  public Map<String, List<String>> getExtendField()
  {
    return this.extendField;
  }

  public BizResult getResult()
  {
    return this.result;
  }

  public void setBillList(List<MonthBill> paramList)
  {
    this.billList = paramList;
  }

  public void setCustomerType(String paramString)
  {
    this.customerType = paramString;
  }

  public void setExtendField(Map<String, List<String>> paramMap)
  {
    this.extendField = paramMap;
  }

  public void setResult(BizResult paramBizResult)
  {
    this.result = paramBizResult;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.bill.model.BillList
 * JD-Core Version:    0.6.2
 */