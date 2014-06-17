package com.alipay.mobile.alipassapp.ui.common;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.callback.BitmapAjaxCallback;

final class aa extends BitmapAjaxCallback
{
  aa(z paramz)
  {
  }

  protected final void callback(String paramString, ImageView paramImageView, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    if (paramBitmap != null)
    {
      this.a.b.setImageBitmap(paramBitmap);
      this.a.c.setVisibility(8);
      this.a.b.setVisibility(0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.aa
 * JD-Core Version:    0.6.2
 */