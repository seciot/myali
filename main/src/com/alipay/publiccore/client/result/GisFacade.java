package com.alipay.publiccore.client.result;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.publiccore.client.req.GisUploadReq;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public abstract interface GisFacade
{
  @OperationType("alipay.publicplatform.gis.updateLocation")
  public abstract PublicResult updateLocation(GisUploadReq paramGisUploadReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.GisFacade
 * JD-Core Version:    0.6.2
 */