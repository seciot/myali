package com.alipay.mobile.about.ui;

import android.widget.HorizontalScrollView;
import com.alipay.mobile.commonui.widget.APLinearLayout;

final class ao
  implements Runnable
{
  ao(MultiPictureSelectorActivity.a parama)
  {
  }

  public final void run()
  {
    MultiPictureSelectorActivity.v(this.a.c).smoothScrollBy(MultiPictureSelectorActivity.j(this.a.c).getWidth(), 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ao
 * JD-Core Version:    0.6.2
 */