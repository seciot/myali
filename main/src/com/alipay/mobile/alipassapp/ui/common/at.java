package com.alipay.mobile.alipassapp.ui.common;

import android.text.Layout;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.List;

final class at
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  at(CouponPrimaryFieldLayout paramCouponPrimaryFieldLayout, List paramList)
  {
  }

  public final void onGlobalLayout()
  {
    for (int i = 0; i < this.a.size(); i++)
    {
      APTextView localAPTextView = (APTextView)this.a.get(i);
      if (localAPTextView.getLineCount() > 2)
      {
        int j = localAPTextView.getLayout().getLineEnd(1);
        localAPTextView.setText(localAPTextView.getText().subSequence(0, j - 3) + "...");
      }
    }
    this.b.getChildAt(0).getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.at
 * JD-Core Version:    0.6.2
 */