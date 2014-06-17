package com.alipay.android.app.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.alipay.android.app.sys.GlobalContext;
import com.squareup.picasso.Target;

public abstract class BaseTarget
  implements Target
{
  public abstract void a(int paramInt);

  public final void a(Bitmap paramBitmap)
  {
    a(new BitmapDrawable(GlobalContext.a().b().getResources(), paramBitmap));
  }

  public abstract void a(Drawable paramDrawable);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.BaseTarget
 * JD-Core Version:    0.6.2
 */