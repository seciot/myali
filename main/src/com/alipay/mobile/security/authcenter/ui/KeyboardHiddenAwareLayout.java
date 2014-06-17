package com.alipay.mobile.security.authcenter.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class KeyboardHiddenAwareLayout extends RelativeLayout
{
  private w a = null;
  private Handler b = new Handler();

  public KeyboardHiddenAwareLayout(Context paramContext)
  {
    super(paramContext);
  }

  public KeyboardHiddenAwareLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt4 - paramInt2 >= 100) && (this.a != null))
      this.b.post(new u(this));
    if ((paramInt2 - paramInt4 >= 100) && (this.a != null))
      this.b.post(new v(this));
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setKeyboardHiddenListener(w paramw)
  {
    this.a = paramw;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.KeyboardHiddenAwareLayout
 * JD-Core Version:    0.6.2
 */