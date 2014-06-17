package com.alipay.android.widget.security.ui;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import java.io.IOException;

class SecurityCertifiedCardActivity$1
  implements ImageLoaderListener
{
  SecurityCertifiedCardActivity$1(SecurityCertifiedCardActivity paramSecurityCertifiedCardActivity)
  {
  }

  public void onCancelled(String paramString)
  {
  }

  public void onFailed(String paramString1, int paramInt, String paramString2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)this.a.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    localOptions.inDensity = localDisplayMetrics.densityDpi;
    localOptions.inScaled = true;
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeStream(this.a.getResources().getAssets().open("BANK_default.png"), null, localOptions);
      localBitmap1 = localBitmap2;
      if (localBitmap1 != null)
        this.a.a(localBitmap1);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        Bitmap localBitmap1 = null;
    }
  }

  public void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    this.a.a(paramBitmap);
  }

  public void onPreLoad(String paramString)
  {
  }

  public void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedCardActivity.1
 * JD-Core Version:    0.6.2
 */