package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.IntProperty;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat$11 extends IntProperty<View>
{
  PreHoneycombCompat$11(String paramString)
  {
    super(paramString);
  }

  public final Integer get(View paramView)
  {
    return Integer.valueOf(AnimatorProxy.wrap(paramView).getScrollX());
  }

  public final void setValue(View paramView, int paramInt)
  {
    AnimatorProxy.wrap(paramView).setScrollX(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PreHoneycombCompat.11
 * JD-Core Version:    0.6.2
 */