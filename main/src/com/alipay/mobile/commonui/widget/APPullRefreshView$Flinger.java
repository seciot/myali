package com.alipay.mobile.commonui.widget;

import android.widget.Scroller;

class APPullRefreshView$Flinger
  implements Runnable
{
  private Scroller a;
  private int b;
  private boolean c;

  public APPullRefreshView$Flinger(APPullRefreshView paramAPPullRefreshView)
  {
    this.a = new Scroller(paramAPPullRefreshView.getContext());
    this.c = true;
  }

  public boolean isFinished()
  {
    return this.c;
  }

  public void recover(int paramInt)
  {
    if (paramInt <= 0)
      return;
    this.this$0.removeCallbacks(this);
    this.b = 0;
    this.c = false;
    this.a.startScroll(0, 0, 0, paramInt, 300);
    this.this$0.post(this);
  }

  public void run()
  {
    if (this.a.computeScrollOffset())
    {
      APPullRefreshView.access$000(this.this$0, this.b - this.a.getCurrY(), false);
      this.b = this.a.getCurrY();
      this.this$0.post(this);
      return;
    }
    this.c = true;
    this.this$0.removeCallbacks(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPullRefreshView.Flinger
 * JD-Core Version:    0.6.2
 */