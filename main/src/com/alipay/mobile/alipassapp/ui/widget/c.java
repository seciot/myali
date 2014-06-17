package com.alipay.mobile.alipassapp.ui.widget;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.callback.BitmapAjaxCallback;

final class c extends BitmapAjaxCallback
{
  c(MemberCardHeaderStyle paramMemberCardHeaderStyle, int paramInt)
  {
  }

  protected final void callback(String paramString, ImageView paramImageView, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    int i = 1;
    APImageView localAPImageView = MemberCardHeaderStyle.access$100(this.b);
    if (MemberCardHeaderStyle.access$000(this.b) == i);
    while (true)
    {
      localAPImageView.setImageDrawable(new e(paramBitmap, i, this.a));
      return;
      int j = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.c
 * JD-Core Version:    0.6.2
 */