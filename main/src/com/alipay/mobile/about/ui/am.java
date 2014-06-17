package com.alipay.mobile.about.ui;

import android.widget.HorizontalScrollView;
import com.alipay.mobile.commonui.widget.APLinearLayout;

final class am
  implements Runnable
{
  am(MultiPictureSelectorActivity paramMultiPictureSelectorActivity)
  {
  }

  public final void run()
  {
    MultiPictureSelectorActivity.v(this.a).smoothScrollBy(MultiPictureSelectorActivity.j(this.a).getWidth(), 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.am
 * JD-Core Version:    0.6.2
 */