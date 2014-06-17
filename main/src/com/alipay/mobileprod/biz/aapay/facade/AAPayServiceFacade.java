package com.alipay.mobileprod.biz.aapay.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilelbs.common.service.facade.vo.Location;
import com.alipay.mobileprod.biz.aapay.model.AAPayOrderInfo;
import com.alipay.mobileprod.biz.aapay.model.client.BillCreateResult;
import com.alipay.mobileprod.biz.aapay.model.client.BillState;
import com.alipay.mobileprod.biz.aapay.model.client.CandidateUserList;
import com.alipay.mobileprod.biz.aapay.model.client.OrderResultList;
import java.util.List;

public abstract interface AAPayServiceFacade
{
  @OperationType("alipay.mobileprod.aapay.createBill")
  @CheckLogin
  public abstract BillCreateResult createBill(String paramString, List<AAPayOrderInfo> paramList);

  @OperationType("alipay.mobileprod.aapay.createBillWithName")
  @CheckLogin
  public abstract BillCreateResult createBillWithName(String paramString1, String paramString2, String paramString3, List<AAPayOrderInfo> paramList);

  @OperationType("alipay.mobileprod.aapay.createSession")
  @CheckLogin
  public abstract String createSession(List<String> paramList);

  @OperationType("alipay.mobileprod.aapay.deleteSession")
  @CheckLogin
  public abstract void deleteSession(String paramString);

  @OperationType("alipay.mobileprod.aapay.getUserList")
  @CheckLogin
  public abstract CandidateUserList getUserList(String paramString1, String paramString2, Location paramLocation);

  @OperationType("alipay.mobileprod.aapay.queryAAPayBillState")
  @CheckLogin
  public abstract BillState queryAAPayBillState(String paramString);

  @OperationType("alipay.mobileprod.aapay.queryAAPayResult")
  @CheckLogin
  public abstract OrderResultList queryAAPayResult(List<AAPayOrderInfo> paramList);

  @OperationType("alipay.mobileprod.aapay.queryAAPayState")
  @CheckLogin
  public abstract BillState queryAAPayState(Location paramLocation);

  @OperationType("alipay.mobileprod.aapay.quitSession")
  @CheckLogin
  public abstract void quitSession();

  @OperationType("alipay.mobileprod.aapay.rejectPay")
  @CheckLogin
  public abstract void rejectPay(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.facade.AAPayServiceFacade
 * JD-Core Version:    0.6.2
 */