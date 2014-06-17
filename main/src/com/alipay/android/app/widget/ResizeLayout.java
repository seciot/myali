package com.alipay.android.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.alipay.android.app.display.uielement.IElementFocusChanged;
import java.lang.ref.WeakReference;

public final class ResizeLayout extends LinearLayout
  implements IElementFocusChanged
{
  private WeakReference a;

  public ResizeLayout(Context paramContext)
  {
    super(paramContext);
  }

  public ResizeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void a()
  {
    postDelayed(new r(this), 300L);
  }

  public final void onFocusChange(int paramInt)
  {
    a();
  }

  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      return;
    a();
  }

  public final void setScrollView(ScrollView paramScrollView)
  {
    paramScrollView.setSmoothScrollingEnabled(true);
    this.a = new WeakReference(paramScrollView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.ResizeLayout
 * JD-Core Version:    0.6.2
 */