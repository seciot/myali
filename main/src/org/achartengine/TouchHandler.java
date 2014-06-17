package org.achartengine;

import android.graphics.RectF;
import android.view.MotionEvent;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.tools.Pan;
import org.achartengine.tools.PanListener;
import org.achartengine.tools.Zoom;
import org.achartengine.tools.ZoomListener;

public class TouchHandler
  implements ITouchHandler
{
  private DefaultRenderer a;
  private float b;
  private float c;
  private float d;
  private float e;
  private RectF f = new RectF();
  private Pan g;
  private Zoom h;
  private GraphicalView i;

  public TouchHandler(GraphicalView paramGraphicalView, AbstractChart paramAbstractChart)
  {
    this.i = paramGraphicalView;
    this.f = this.i.getZoomRectangle();
    if ((paramAbstractChart instanceof XYChart));
    for (this.a = ((XYChart)paramAbstractChart).getRenderer(); ; this.a = ((RoundChart)paramAbstractChart).getRenderer())
    {
      if (this.a.isPanEnabled())
        this.g = new Pan(paramAbstractChart);
      if (this.a.isZoomEnabled())
        this.h = new Zoom(paramAbstractChart, true, 1.0F);
      return;
    }
  }

  private void a(float paramFloat, int paramInt)
  {
    float f1 = Math.min(Math.max(paramFloat, 0.9F), 1.1F);
    if ((f1 > 0.9D) && (f1 < 1.1D))
    {
      this.h.setZoomRate(f1);
      this.h.apply(paramInt);
    }
  }

  public void addPanListener(PanListener paramPanListener)
  {
    if (this.g != null)
      this.g.addPanListener(paramPanListener);
  }

  public void addZoomListener(ZoomListener paramZoomListener)
  {
    if (this.h != null)
      this.h.addZoomListener(paramZoomListener);
  }

  public boolean handleTouch(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getAction();
    if ((this.a != null) && (j == 2))
    {
      if ((this.b >= 0.0F) || (this.c >= 0.0F))
      {
        float f1 = paramMotionEvent.getX(0);
        float f2 = paramMotionEvent.getY(0);
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        if ((paramMotionEvent.getPointerCount() > 1) && ((this.d >= 0.0F) || (this.e >= 0.0F)) && (this.a.isZoomEnabled()))
        {
          float f3 = paramMotionEvent.getX(1);
          float f4 = paramMotionEvent.getY(1);
          f5 = Math.abs(f1 - f3);
          f6 = Math.abs(f2 - f4);
          f7 = Math.abs(this.b - this.d);
          f8 = Math.abs(this.c - this.e);
          f9 = Math.abs(f2 - this.c) / Math.abs(f1 - this.b);
          f10 = Math.abs(f4 - this.e) / Math.abs(f3 - this.d);
          if ((f9 <= 0.25D) && (f10 <= 0.25D))
          {
            a(f5 / f7, 1);
            this.d = f3;
            this.e = f4;
          }
        }
        while (true)
        {
          this.b = f1;
          this.c = f2;
          this.i.repaint();
          return true;
          if ((f9 >= 3.73D) && (f10 >= 3.73D))
          {
            a(f6 / f8, 2);
            break;
          }
          if (Math.abs(f1 - this.b) >= Math.abs(f2 - this.c));
          for (float f11 = f5 / f7; ; f11 = f6 / f8)
          {
            a(f11, 0);
            break;
          }
          if (this.a.isPanEnabled())
          {
            this.g.apply(this.b, this.c, f1, f2);
            this.d = 0.0F;
            this.e = 0.0F;
          }
        }
      }
    }
    else if (j == 0)
    {
      this.b = paramMotionEvent.getX(0);
      this.c = paramMotionEvent.getY(0);
      if ((this.a != null) && (this.a.isZoomEnabled()) && (this.f.contains(this.b, this.c)))
      {
        if (this.b < this.f.left + this.f.width() / 3.0F)
          this.i.zoomIn();
        while (true)
        {
          return true;
          if (this.b < this.f.left + 2.0F * this.f.width() / 3.0F)
            this.i.zoomOut();
          else
            this.i.zoomReset();
        }
      }
    }
    else if ((j == 1) || (j == 6))
    {
      this.b = 0.0F;
      this.c = 0.0F;
      this.d = 0.0F;
      this.e = 0.0F;
      if (j == 6)
      {
        this.b = -1.0F;
        this.c = -1.0F;
      }
    }
    return !this.a.isClickEnabled();
  }

  public void removePanListener(PanListener paramPanListener)
  {
    if (this.g != null)
      this.g.removePanListener(paramPanListener);
  }

  public void removeZoomListener(ZoomListener paramZoomListener)
  {
    if (this.h != null)
      this.h.removeZoomListener(paramZoomListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.TouchHandler
 * JD-Core Version:    0.6.2
 */