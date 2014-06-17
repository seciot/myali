package com.alipay.mobile.security.accountmanager.AccountInfo.biz;

import android.graphics.Bitmap;
import com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;

public abstract class SecurityAccountQrCode extends ExternalService
{
  public abstract SecurityQrCodeShowResult findQrCode(String paramString);

  public abstract SecurityQrCodeShowResult getCacheQrCodeData(String paramString);

  public abstract SecurityQrCodeShowResult getCacheQrCodeData(String paramString, SecurityAccountQrCode.BitmapListener paramBitmapListener);

  public abstract SecurityAccountQrCodeInfoResult getQrCodeDataByRpc();

  public abstract void putCacheQrCodeData(String paramString);

  public abstract void saveQrImgToDCIM(BaseActivity paramBaseActivity, Bitmap paramBitmap);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode
 * JD-Core Version:    0.6.2
 */