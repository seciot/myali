package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat$1 extends FloatProperty<View>
{
  PreHoneycombCompat$1(String paramString)
  {
    super(paramString);
  }

  public final Float get(View paramView)
  {
    return Float.valueOf(AnimatorProxy.wrap(paramView).getAlpha());
  }

  public final void setValue(View paramView, float paramFloat)
  {
    AnimatorProxy.wrap(paramView).setAlpha(paramFloat);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PreHoneycombCompat.1
 * JD-Core Version:    0.6.2
 */