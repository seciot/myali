package android.support.v4.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;
import java.util.ArrayList;

class SlidingPaneLayout$DisableLayerRunnable
  implements Runnable
{
  final View mChildView;

  SlidingPaneLayout$DisableLayerRunnable(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    this.mChildView = paramView;
  }

  public void run()
  {
    if (this.mChildView.getParent() == this.this$0)
    {
      ViewCompat.setLayerType(this.mChildView, 0, null);
      SlidingPaneLayout.access$900(this.this$0, this.mChildView);
    }
    SlidingPaneLayout.access$1000(this.this$0).remove(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.DisableLayerRunnable
 * JD-Core Version:    0.6.2
 */