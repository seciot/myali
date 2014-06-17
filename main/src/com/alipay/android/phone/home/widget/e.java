package com.alipay.android.phone.home.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logging.LogCatLog;

final class e
  implements View.OnClickListener
{
  e(ActiveTopBoardContainer paramActiveTopBoardContainer)
  {
  }

  public final void onClick(View paramView)
  {
    LogCatLog.i(ActiveTopBoardContainer.access$600(), "on top tips Click");
    if (ActiveTopBoardContainer.access$700() == 1)
      this.a.changeState(2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.e
 * JD-Core Version:    0.6.2
 */