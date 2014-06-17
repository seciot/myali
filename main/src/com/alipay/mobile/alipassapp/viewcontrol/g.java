package com.alipay.mobile.alipassapp.viewcontrol;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.alipay.mobile.alipassapp.R.anim;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APListView;

final class g
  implements Runnable
{
  g(e parame)
  {
  }

  public final void run()
  {
    a.d(this.a.a).setVisibility(8);
    a.e(this.a.a).setVisibility(8);
    ((APListView)a.b(this.a.a).findViewById(R.id.backview_list)).setSelection(0);
    a.b(this.a.a).setVisibility(0);
    Animation localAnimation = AnimationUtils.loadAnimation(this.a.a.a, R.anim.alipass_detail_backview_top_show);
    a.b(this.a.a).findViewById(R.id.layout_backview_top_back).setVisibility(0);
    a.b(this.a.a).findViewById(R.id.layout_backview_top_back).startAnimation(localAnimation);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.g
 * JD-Core Version:    0.6.2
 */