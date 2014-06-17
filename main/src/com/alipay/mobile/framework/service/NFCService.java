package com.alipay.mobile.framework.service;

import android.app.Activity;
import android.content.Context;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.nfc.biz.processor.NFCBizProcessorManager;

public abstract class NFCService extends ExternalService
{
  public abstract void disableAlipayNfc(Context paramContext);

  public abstract void disableForegroundDispatch(Activity paramActivity);

  public abstract void enableAlipayNfc(Context paramContext);

  public abstract void enableForegroundDispatch(Activity paramActivity);

  public abstract NFCBizProcessorManager getNFCBizProcessorManager();

  public abstract boolean hasFeatureNfc(Context paramContext);

  public abstract boolean isAlipayNfcEnable(Context paramContext);

  public abstract boolean isNfcEnable(Context paramContext);

  public abstract void registerNFCMsgSender(Activity paramActivity);

  public abstract void setNdefPushMessage(Activity paramActivity);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.NFCService
 * JD-Core Version:    0.6.2
 */