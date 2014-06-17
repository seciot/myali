package com.alipay.mobile.security.se;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class SEService extends ExternalService
{
  public abstract boolean generateOTPSeed(SECallBack paramSECallBack);

  public abstract String getOTPIndex(String paramString);

  public abstract Long getOTPTimediff();

  public abstract boolean invalidCurTidUidSeed();

  public abstract boolean removeOTPCurUserIndex(String paramString);

  public abstract String showTokenNum();

  public abstract boolean timeCalibration(SECallBack paramSECallBack);

  public abstract boolean updateOTPConfigFile(SECallBack paramSECallBack);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.se.SEService
 * JD-Core Version:    0.6.2
 */