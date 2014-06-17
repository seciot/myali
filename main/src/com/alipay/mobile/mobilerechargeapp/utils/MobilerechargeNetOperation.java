package com.alipay.mobile.mobilerechargeapp.utils;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileprod.biz.recharge.MobileOperatorAlertService;
import com.alipay.mobileprod.biz.recharge.MobileRechargeService;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignQueryRes;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.alipay.mobileprod.biz.recharge.dto.AlertSwitchRes;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderReq;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderRes;
import com.alipay.mobileprod.biz.recharge.dto.OperatorAlertReq;
import com.alipay.mobileprod.biz.recharge.dto.QueryEcardReq;
import com.alipay.mobileprod.biz.recharge.dto.QueryEcardRes;

public class MobilerechargeNetOperation
{
  private RpcService a = null;
  private String b = "";
  private AuthService c;
  private MobileRechargeService d;
  private MobileOperatorAlertService e;

  public MobilerechargeNetOperation(ActivityApplication paramActivityApplication)
  {
    this.a = ((RpcService)paramActivityApplication.getServiceByInterface(RpcService.class.getName()));
    this.d = ((MobileRechargeService)this.a.getRpcProxy(MobileRechargeService.class));
    this.e = ((MobileOperatorAlertService)this.a.getRpcProxy(MobileOperatorAlertService.class));
    this.c = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    UserInfo localUserInfo = this.c.getUserInfo();
    if ((localUserInfo != null) && (localUserInfo.getMobileNumber() != null));
    for (String str = localUserInfo.getMobileNumber(); ; str = "")
    {
      this.b = str;
      return;
    }
  }

  public final AlertSignRes a(String paramString)
  {
    OperatorAlertReq localOperatorAlertReq = new OperatorAlertReq();
    localOperatorAlertReq.mobileNo = paramString;
    localOperatorAlertReq.alertType = "BalanceAlert";
    return this.e.alertCancel(localOperatorAlertReq);
  }

  public final AlertSignRes a(String paramString1, String paramString2)
  {
    OperatorAlertReq localOperatorAlertReq = new OperatorAlertReq();
    localOperatorAlertReq.mobileNo = paramString1;
    localOperatorAlertReq.alertType = "BalanceAlert";
    localOperatorAlertReq.checkCode = paramString2;
    return this.e.alertSign(localOperatorAlertReq);
  }

  public final AlertSwitchRes a()
  {
    OperatorAlertReq localOperatorAlertReq = new OperatorAlertReq();
    localOperatorAlertReq.mobileNo = this.b;
    localOperatorAlertReq.alertType = "BalanceAlert";
    return this.e.alertSwitch(localOperatorAlertReq);
  }

  public final CreateOrderRes a(CreateOrderReq paramCreateOrderReq)
  {
    return this.d.create(paramCreateOrderReq);
  }

  public final QueryEcardRes a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2 == null)
      paramString2 = "";
    if (paramString3 == null)
      paramString3 = "";
    QueryEcardReq localQueryEcardReq = new QueryEcardReq();
    localQueryEcardReq.setMobile(paramString1);
    localQueryEcardReq.sceneCode = paramString2;
    localQueryEcardReq.appId = paramString3;
    return this.d.queryEcard(localQueryEcardReq);
  }

  public final AlertSignQueryRes b()
  {
    OperatorAlertReq localOperatorAlertReq = new OperatorAlertReq();
    localOperatorAlertReq.mobileNo = this.b;
    return this.e.alertSignQuery(localOperatorAlertReq);
  }

  public final AlertSignRes b(String paramString)
  {
    OperatorAlertReq localOperatorAlertReq = new OperatorAlertReq();
    localOperatorAlertReq.mobileNo = paramString;
    localOperatorAlertReq.alertType = "BalanceAlert";
    return this.e.preAlertSign(localOperatorAlertReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.utils.MobilerechargeNetOperation
 * JD-Core Version:    0.6.2
 */