package com.alipay.mobile.security.otp;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class OtpManager extends ExternalService
{
  public static String OTP_BARCODE = "barcode";
  public static String OTP_SOUND = "sound";

  public abstract void deleteIndex(String paramString);

  public abstract void deleteSeed();

  public abstract String getBarcodeOtp();

  public abstract String getDynamicOtp(String paramString);

  public abstract String getIndex(String paramString);

  public abstract String getOtpNum();

  public abstract void initIndex();

  public abstract void initSeed();

  public abstract void sendTodoMessage();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.otp.OtpManager
 * JD-Core Version:    0.6.2
 */