package com.alipay.asset.common.view;

final class a
  implements Runnable
{
  a(WealthWidgetMsgFlag paramWealthWidgetMsgFlag)
  {
  }

  public final void run()
  {
    int i = this.a.getShowNum();
    if (this.a.isHideFlag())
    {
      this.a.setVisibility(4);
      new StringBuilder("WidgetId=").append(WealthWidgetMsgFlag.access$000(this.a)).append(",show=false;").append(WealthWidgetMsgFlag.access$100(this.a)).toString();
      return;
    }
    if (WealthWidgetMsgFlag.access$200(this.a) == WealthWidgetMsgFlag.access$300())
      this.a.showMsgFlag();
    while (true)
    {
      this.a.setVisibility(0);
      new StringBuilder("WidgetId=").append(WealthWidgetMsgFlag.access$000(this.a)).append(",show=true;").append(WealthWidgetMsgFlag.access$100(this.a)).toString();
      return;
      if (WealthWidgetMsgFlag.access$400(this.a) == WealthWidgetMsgFlag.access$500())
        this.a.showMsgFlag(i);
      else if (WealthWidgetMsgFlag.access$600(this.a) == WealthWidgetMsgFlag.access$700())
        this.a.showMsgFlagNew();
      else if (WealthWidgetMsgFlag.access$800(this.a) == WealthWidgetMsgFlag.MSG_STYLE_LABLE)
        this.a.showMsgFlag(WealthWidgetMsgFlag.access$900(this.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.view.a
 * JD-Core Version:    0.6.2
 */