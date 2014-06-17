package com.alipay.mobilesecurity.biz.gw.service.mobileotp;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenBatchSyncReq;
import com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenPreCheckReq;
import com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenReq;
import com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenRes;
import com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenTimeRes;

public abstract interface MobileOtpManagerFacade
{
  @OperationType("alipay.mobile.security.mobileotp.batchsync")
  public abstract MobileTokenRes batchSync(MobileTokenBatchSyncReq paramMobileTokenBatchSyncReq);

  @OperationType("alipay.mobile.security.mobileotp.close")
  public abstract MobileSecurityResult closeMobileToken(MobileTokenReq paramMobileTokenReq);

  @OperationType("alipay.mobile.security.mobileotp.initDeviceOtp")
  public abstract MobileTokenRes initDeviceOtp(MobileTokenReq paramMobileTokenReq);

  @OperationType("alipay.mobile.security.mobileotp.open")
  public abstract MobileTokenRes openMobileToken(MobileTokenReq paramMobileTokenReq);

  @OperationType("alipay.mobile.security.mobileotp.precondition.check")
  public abstract MobileSecurityResult preConditionCheck(MobileTokenPreCheckReq paramMobileTokenPreCheckReq);

  @OperationType("alipay.mobile.security.mobileotp.query")
  public abstract MobileTokenRes queryToken(MobileTokenReq paramMobileTokenReq);

  @OperationType("alipay.mobile.security.mobileotp.calibration.time")
  public abstract MobileTokenTimeRes timeCalibration();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.mobileotp.MobileOtpManagerFacade
 * JD-Core Version:    0.6.2
 */