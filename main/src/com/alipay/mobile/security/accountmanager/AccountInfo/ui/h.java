package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

final class h
  implements ImageLoaderListener
{
  h(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onCancelled(String paramString)
  {
  }

  public final void onFailed(String paramString1, int paramInt, String paramString2)
  {
  }

  public final void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    this.a.getBundle(paramBitmap);
  }

  public final void onPreLoad(String paramString)
  {
  }

  public final void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.h
 * JD-Core Version:    0.6.2
 */