package com.alipay.mobileprod.biz.puc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.core.model.puc.vo.AddBillKeyReq;
import com.alipay.mobileprod.core.model.puc.vo.AddBillKeyResp;
import com.alipay.mobileprod.core.model.puc.vo.CreateOrderKeyReq;
import com.alipay.mobileprod.core.model.puc.vo.CreateOrderKeyResp;
import com.alipay.mobileprod.core.model.puc.vo.DeleteBillKeyReq;
import com.alipay.mobileprod.core.model.puc.vo.DeleteBillKeyResp;
import com.alipay.mobileprod.core.model.puc.vo.NotifyRecommendReq;
import com.alipay.mobileprod.core.model.puc.vo.NotifyRecommendResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByHistoryBillKeyReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByHistoryBillKeyResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByInstReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByInstResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByRemindReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillByRemindResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeBillResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeInstListReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryChargeInstListResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryCityListReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryCityListResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryHistoryBillKeysReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryHistoryBillKeysResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryIPCityReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryIPCityResp;
import com.alipay.mobileprod.core.model.puc.vo.QueryOweBillReq;
import com.alipay.mobileprod.core.model.puc.vo.QueryOweBillResp;
import com.alipay.mobileprod.core.model.puc.vo.QuerySubscriberParamReq;
import com.alipay.mobileprod.core.model.puc.vo.QuerySubscriberParamResp;
import com.alipay.mobileprod.core.model.puc.vo.SubscriberBillReq;
import com.alipay.mobileprod.core.model.puc.vo.SubscriberBillResp;

public abstract interface PucService
{
  @OperationType("alipay.mobile.puc.addBillKey")
  @CheckLogin
  public abstract AddBillKeyResp addBillKey(AddBillKeyReq paramAddBillKeyReq);

  @OperationType("alipay.mobile.puc.createOrder")
  @CheckLogin
  public abstract CreateOrderKeyResp createOrder(CreateOrderKeyReq paramCreateOrderKeyReq);

  @OperationType("alipay.mobile.puc.deleteBillKey")
  @CheckLogin
  public abstract DeleteBillKeyResp deleteBillKey(DeleteBillKeyReq paramDeleteBillKeyReq);

  @OperationType("alipay.mobile.puc.notifyRecommend")
  @CheckLogin
  public abstract NotifyRecommendResp notifyRecommend(NotifyRecommendReq paramNotifyRecommendReq);

  @OperationType("alipay.mobile.puc.queryChargeBill")
  @CheckLogin
  public abstract QueryChargeBillResp queryChargeBill(QueryChargeBillReq paramQueryChargeBillReq);

  @OperationType("alipay.mobile.puc.queryChargeBillByHistoryBillKey")
  @CheckLogin
  public abstract QueryChargeBillByHistoryBillKeyResp queryChargeBillByHistoryBillKey(QueryChargeBillByHistoryBillKeyReq paramQueryChargeBillByHistoryBillKeyReq);

  @OperationType("alipay.mobile.puc.queryChargeBillByInst")
  @CheckLogin
  public abstract QueryChargeBillByInstResp queryChargeBillByInst(QueryChargeBillByInstReq paramQueryChargeBillByInstReq);

  @OperationType("alipay.mobile.puc.queryChargeBillByRemind")
  @CheckLogin
  public abstract QueryChargeBillByRemindResp queryChargeBillByRemind(QueryChargeBillByRemindReq paramQueryChargeBillByRemindReq);

  @OperationType("alipay.mobile.puc.queryChargeInstList")
  @CheckLogin
  public abstract QueryChargeInstListResp queryChargeInstList(QueryChargeInstListReq paramQueryChargeInstListReq);

  @OperationType("alipay.mobile.puc.queryCityList")
  @CheckLogin
  public abstract QueryCityListResp queryCityList(QueryCityListReq paramQueryCityListReq);

  @OperationType("alipay.mobile.puc.queryHistoryBillKeys")
  @CheckLogin
  public abstract QueryHistoryBillKeysResp queryHistoryBillKeys(QueryHistoryBillKeysReq paramQueryHistoryBillKeysReq);

  @OperationType("alipay.mobile.puc.queryIPCity")
  @CheckLogin
  public abstract QueryIPCityResp queryIPCity(QueryIPCityReq paramQueryIPCityReq);

  @OperationType("alipay.mobile.puc.queryOweBill")
  @CheckLogin
  public abstract QueryOweBillResp queryOweBill(QueryOweBillReq paramQueryOweBillReq);

  @OperationType("alipay.mobile.puc.querySubscriberParam")
  @CheckLogin
  public abstract QuerySubscriberParamResp querySubscriberParam(QuerySubscriberParamReq paramQuerySubscriberParamReq);

  @OperationType("alipay.mobile.puc.subscriberBill")
  @CheckLogin
  public abstract SubscriberBillResp subscriberBill(SubscriberBillReq paramSubscriberBillReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.puc.PucService
 * JD-Core Version:    0.6.2
 */