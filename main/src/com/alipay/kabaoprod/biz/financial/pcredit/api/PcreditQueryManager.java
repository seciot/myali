package com.alipay.kabaoprod.biz.financial.pcredit.api;

import com.alipay.kabaoprod.biz.financial.pcredit.request.BillDetailReq;
import com.alipay.kabaoprod.biz.financial.pcredit.request.BillListReq;
import com.alipay.kabaoprod.biz.financial.pcredit.result.BillDetailResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.BillListResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.PcreditAccountInfoResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.PcreditProdInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface PcreditQueryManager
{
  @OperationType("alipay.kabao.asset.pcredit.queryAccountInfo")
  @CheckLogin
  public abstract PcreditAccountInfoResult queryAccountInfo(boolean paramBoolean);

  @OperationType("alipay.kabao.asset.pcredit.querybilldetail")
  @CheckLogin
  public abstract BillDetailResult queryBillDetail(BillDetailReq paramBillDetailReq);

  @OperationType("alipay.kabao.asset.pcredit.querybilllist")
  @CheckLogin
  public abstract BillListResult queryBillList(BillListReq paramBillListReq);

  @OperationType("alipay.kabao.asset.pcredit.queryPcreditProdInfo")
  @CheckLogin
  public abstract PcreditProdInfoResult queryPcreditProdInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.api.PcreditQueryManager
 * JD-Core Version:    0.6.2
 */