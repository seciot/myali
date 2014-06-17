package com.alipay.mobileprod.biz.aapay.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.aapay.model.AAPayBatchInfo;
import com.alipay.mobileprod.biz.aapay.model.AAPayOrderInfo;
import java.util.List;

public abstract interface AAPayHistoryQueryFacade
{
  @OperationType("alipay.mobileprod.aapay.queryAAPayHistoryDetail")
  @CheckLogin
  public abstract List<AAPayOrderInfo> queryDetail(String paramString);

  @OperationType("alipay.mobileprod.aapay.queryAAPayHistoryBatch")
  @CheckLogin
  public abstract List<AAPayBatchInfo> queryRecentBatch();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.facade.AAPayHistoryQueryFacade
 * JD-Core Version:    0.6.2
 */