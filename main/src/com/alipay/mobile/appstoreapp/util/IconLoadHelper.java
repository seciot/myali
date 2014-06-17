package com.alipay.mobile.appstoreapp.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.openplatform.R.drawable;

public class IconLoadHelper
{
  private static Drawable a = null;

  public static StateListDrawable a(Bitmap paramBitmap)
  {
    a();
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(AlipayApplication.getInstance().getResources(), paramBitmap);
    LayerDrawable localLayerDrawable1 = new LayerDrawable(new Drawable[] { localBitmapDrawable });
    LayerDrawable localLayerDrawable2 = new LayerDrawable(new Drawable[] { localBitmapDrawable });
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842913 }, localLayerDrawable2);
    localStateListDrawable.addState(new int[] { 16842919 }, localLayerDrawable2);
    localStateListDrawable.addState(new int[] { 16842908 }, localLayerDrawable2);
    localStateListDrawable.addState(new int[0], localLayerDrawable1);
    return localStateListDrawable;
  }

  public static StateListDrawable a(Bitmap paramBitmap, boolean paramBoolean)
  {
    a();
    Object localObject = new BitmapDrawable(AlipayApplication.getInstance().getResources(), paramBitmap);
    if (paramBoolean);
    while (true)
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      localStateListDrawable.addState(new int[0], (Drawable)localObject);
      return localStateListDrawable;
      localObject = new LayerDrawable(new Drawable[] { localObject });
    }
  }

  private static void a()
  {
    if (a == null)
      a = AlipayApplication.getInstance().getResources().getDrawable(R.drawable.d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.util.IconLoadHelper
 * JD-Core Version:    0.6.2
 */