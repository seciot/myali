package com.alipay.mobile.onsitepay.payer.barcode;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public class SizeEventImageView extends ImageView
{
  protected v listener = null;

  public SizeEventImageView(Context paramContext)
  {
    super(paramContext);
  }

  public SizeEventImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SizeEventImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.listener != null)
      this.listener.a();
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (this.listener != null)
      this.listener.a();
  }

  public void reFresh()
  {
    if (this.listener != null)
      this.listener.a();
  }

  public void setOnRefreshEventListener(v paramv)
  {
    this.listener = paramv;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.SizeEventImageView
 * JD-Core Version:    0.6.2
 */