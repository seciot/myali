package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundTradeRecord;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonPageResult;
import java.util.List;

public class QueryFundTradeRecordResult extends KabaoCommonPageResult
{
  public List<FundTradeRecord> fundTradeRecordList;

  public List<FundTradeRecord> getFundTradeRecordList()
  {
    return this.fundTradeRecordList;
  }

  public void setFundTradeRecordList(List<FundTradeRecord> paramList)
  {
    this.fundTradeRecordList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.QueryFundTradeRecordResult
 * JD-Core Version:    0.6.2
 */