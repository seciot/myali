package com.alipay.mobilebill.biz.bill.model.billdetail;

import com.alipay.mobilebill.biz.shared.bill.model.FlagTraceInfo;
import com.alipay.mobilebill.common.util.ToString;
import java.util.List;

public class BillDetailTraceInfo extends ToString
{
  public String mdapLogParam;
  private List<FlagTraceInfo> traceList;
  private String traceListTitle;

  public String getMdapLogParam()
  {
    return this.mdapLogParam;
  }

  public List<FlagTraceInfo> getTraceList()
  {
    return this.traceList;
  }

  public String getTraceListTitle()
  {
    return this.traceListTitle;
  }

  public void setMdapLogParam(String paramString)
  {
    this.mdapLogParam = paramString;
  }

  public void setTraceList(List<FlagTraceInfo> paramList)
  {
    this.traceList = paramList;
  }

  public void setTraceListTitle(String paramString)
  {
    this.traceListTitle = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.bill.model.billdetail.BillDetailTraceInfo
 * JD-Core Version:    0.6.2
 */