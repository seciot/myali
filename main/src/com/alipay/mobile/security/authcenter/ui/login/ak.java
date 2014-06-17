package com.alipay.mobile.security.authcenter.ui.login;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.callback.BitmapAjaxCallback;

final class ak extends BitmapAjaxCallback
{
  ak(UserLoginFragment paramUserLoginFragment)
  {
  }

  protected final void callback(String paramString, ImageView paramImageView, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    paramImageView.setImageBitmap(paramBitmap);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.ak
 * JD-Core Version:    0.6.2
 */