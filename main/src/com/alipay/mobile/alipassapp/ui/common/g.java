package com.alipay.mobile.alipassapp.ui.common;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.view.View;

public final class g
{
  public static void a(View paramView, Bitmap paramBitmap, int paramInt)
  {
    if ((paramBitmap == null) || (paramView == null))
      return;
    Canvas localCanvas = new Canvas(paramBitmap);
    localCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    localCanvas.drawColor(paramInt);
    paramView.draw(localCanvas);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.g
 * JD-Core Version:    0.6.2
 */