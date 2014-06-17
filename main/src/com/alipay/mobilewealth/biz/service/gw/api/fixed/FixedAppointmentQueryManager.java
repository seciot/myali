package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedAppointDealListPageReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedAppointmentInfoQueryReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAppointDealListPageResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAppointmentInfoQueryResult;

public abstract interface FixedAppointmentQueryManager
{
  @OperationType("alipay.wealth.fixed.query.appoint.deallist")
  @CheckLogin
  public abstract FixedAppointDealListPageResult queryAppointDealListForPage(FixedAppointDealListPageReq paramFixedAppointDealListPageReq);

  @OperationType("alipay.wealth.fixed.query.appointmentinfo")
  @CheckLogin
  public abstract FixedAppointmentInfoQueryResult queryAppointmentInfo(FixedAppointmentInfoQueryReq paramFixedAppointmentInfoQueryReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedAppointmentQueryManager
 * JD-Core Version:    0.6.2
 */