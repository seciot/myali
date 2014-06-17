package com.alipay.mobile.alipassapp.ui.common;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APImageView;

final class r
  implements ViewPager.OnPageChangeListener
{
  r(AlipassOperationViewPager paramAlipassOperationViewPager)
  {
  }

  public final void onPageScrollStateChanged(int paramInt)
  {
  }

  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public final void onPageSelected(int paramInt)
  {
    if (AlipassOperationViewPager.access$500(this.a) != null)
      for (int i = 0; i < AlipassOperationViewPager.access$500(this.a).length; i++)
      {
        AlipassOperationViewPager.access$500(this.a)[i].setImageResource(R.drawable.guide_dot_black);
        if (paramInt == i)
          AlipassOperationViewPager.access$500(this.a)[i].setImageResource(R.drawable.guide_dot_white);
      }
    AlipassOperationViewPager.access$700(this.a, BehaviourIdEnum.SLIDED, AlipassOperationViewPager.access$600(this.a), "change");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.r
 * JD-Core Version:    0.6.2
 */