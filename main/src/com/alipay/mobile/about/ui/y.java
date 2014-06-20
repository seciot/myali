package com.alipay.mobile.about.ui;

import android.graphics.Bitmap;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class y
  implements View.OnClickListener
{
  y(FeedAssistantActivity paramFeedAssistantActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)paramView.getTag();
      int i = FeedAssistantActivity.removeBundle(this.a).indexOf(localBitmap);
      FeedAssistantActivity.b(this.a, i);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.y
 * JD-Core Version:    0.6.2
 */