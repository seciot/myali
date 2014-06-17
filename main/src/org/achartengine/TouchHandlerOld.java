package org.achartengine;

import android.graphics.RectF;
import android.view.MotionEvent;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.tools.Pan;
import org.achartengine.tools.PanListener;
import org.achartengine.tools.ZoomListener;

public class TouchHandlerOld
  implements ITouchHandler
{
  private DefaultRenderer a;
  private float b;
  private float c;
  private RectF d = new RectF();
  private Pan e;
  private GraphicalView f;

  public TouchHandlerOld(GraphicalView paramGraphicalView, AbstractChart paramAbstractChart)
  {
    this.f = paramGraphicalView;
    this.d = this.f.getZoomRectangle();
    if ((paramAbstractChart instanceof XYChart));
    for (this.a = ((XYChart)paramAbstractChart).getRenderer(); ; this.a = ((RoundChart)paramAbstractChart).getRenderer())
    {
      if (this.a.isPanEnabled())
        this.e = new Pan(paramAbstractChart);
      return;
    }
  }

  public void addPanListener(PanListener paramPanListener)
  {
    if (this.e != null)
      this.e.addPanListener(paramPanListener);
  }

  public void addZoomListener(ZoomListener paramZoomListener)
  {
  }

  public boolean handleTouch(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if ((this.a != null) && (i == 2))
    {
      if ((this.b < 0.0F) && (this.c < 0.0F))
        break label245;
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      if (this.a.isPanEnabled())
        this.e.apply(this.b, this.c, f1, f2);
      this.b = f1;
      this.c = f2;
      this.f.repaint();
    }
    label245: 
    while (!this.a.isClickEnabled())
    {
      float f1;
      float f2;
      return true;
      if (i == 0)
      {
        this.b = paramMotionEvent.getX();
        this.c = paramMotionEvent.getY();
        if ((this.a != null) && (this.a.isZoomEnabled()) && (this.d.contains(this.b, this.c)))
        {
          if (this.b < this.d.left + this.d.width() / 3.0F)
          {
            this.f.zoomIn();
            return true;
          }
          if (this.b < this.d.left + 2.0F * this.d.width() / 3.0F)
          {
            this.f.zoomOut();
            return true;
          }
          this.f.zoomReset();
          return true;
        }
      }
      else if (i == 1)
      {
        this.b = 0.0F;
        this.c = 0.0F;
      }
    }
    return false;
  }

  public void removePanListener(PanListener paramPanListener)
  {
    if (this.e != null)
      this.e.removePanListener(paramPanListener);
  }

  public void removeZoomListener(ZoomListener paramZoomListener)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.TouchHandlerOld
 * JD-Core Version:    0.6.2
 */