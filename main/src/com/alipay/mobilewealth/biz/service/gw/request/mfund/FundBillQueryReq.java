package com.alipay.mobilewealth.biz.service.gw.request.mfund;

import java.io.Serializable;

public class FundBillQueryReq
  implements Serializable
{
  public int currentPage = 1;
  public String filterCodition;
  public int pageSize = 15;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.mfund.FundBillQueryReq
 * JD-Core Version:    0.6.2
 */