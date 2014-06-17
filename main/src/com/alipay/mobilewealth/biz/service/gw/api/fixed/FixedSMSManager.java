package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.SMSSendReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.ValidSMSReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyAppointResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyPledgeResult;
import com.alipay.mobilewealth.common.service.facade.result.SendSMSResult;

public abstract interface FixedSMSManager
{
  @OperationType("alipay.wealth.fixed.apply.appoint.sms.send")
  @CheckLogin
  public abstract SendSMSResult applyAppointSendSMS(SMSSendReq paramSMSSendReq);

  @OperationType("alipay.wealth.fixed.apply.appoint.sms.valid")
  @CheckLogin
  public abstract FixedApplyAppointResult applyAppointValidSMS(ValidSMSReq paramValidSMSReq);

  @OperationType("alipay.wealth.fixed.apply.pledge.sms.send")
  @CheckLogin
  public abstract SendSMSResult applyPledgeSendSMS(SMSSendReq paramSMSSendReq);

  @OperationType("alipay.wealth.fixed.apply.pledge.sms.valid")
  @CheckLogin
  public abstract FixedApplyPledgeResult applyPledgeValidSMS(ValidSMSReq paramValidSMSReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedSMSManager
 * JD-Core Version:    0.6.2
 */