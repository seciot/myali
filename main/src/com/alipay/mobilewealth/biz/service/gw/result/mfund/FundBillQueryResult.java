package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import com.alipay.mobilewealth.core.model.models.mfund.FundTradeRecord;
import java.io.Serializable;
import java.util.List;

public class FundBillQueryResult extends CommonPageResult
  implements Serializable
{
  public List<FundTradeRecord> fundTradeRecordList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundBillQueryResult
 * JD-Core Version:    0.6.2
 */