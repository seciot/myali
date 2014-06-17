package com.alipay.android.mini.uielement;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.alipay.android.app.widget.BaseTarget;

final class e extends BaseTarget
{
  e(UIBlock paramUIBlock, ViewGroup paramViewGroup)
  {
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
  {
    if (UIBlock.a(this.b) != null)
    {
      UIBlock.a(this.b).setBackgroundResource(paramInt);
      return;
    }
    this.a.setBackgroundResource(paramInt);
  }

  public final void a(Drawable paramDrawable)
  {
    if (UIBlock.a(this.b) != null)
    {
      UIBlock.a(this.b).setBackgroundDrawable(paramDrawable);
      return;
    }
    this.a.setBackgroundDrawable(paramDrawable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.e
 * JD-Core Version:    0.6.2
 */