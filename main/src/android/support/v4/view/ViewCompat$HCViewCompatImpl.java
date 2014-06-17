package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class ViewCompat$HCViewCompatImpl extends ViewCompat.GBViewCompatImpl
{
  long getFrameTime()
  {
    return ViewCompatHC.getFrameTime();
  }

  public int getLayerType(View paramView)
  {
    return ViewCompatHC.getLayerType(paramView);
  }

  public void setLayerPaint(View paramView, Paint paramPaint)
  {
    setLayerType(paramView, getLayerType(paramView), paramPaint);
    paramView.invalidate();
  }

  public void setLayerType(View paramView, int paramInt, Paint paramPaint)
  {
    ViewCompatHC.setLayerType(paramView, paramInt, paramPaint);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.HCViewCompatImpl
 * JD-Core Version:    0.6.2
 */