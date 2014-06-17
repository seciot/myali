package org.achartengine;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import org.achartengine.chart.AbstractChart;
import org.achartengine.chart.RoundChart;
import org.achartengine.chart.XYChart;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.tools.FitZoom;
import org.achartengine.tools.PanListener;
import org.achartengine.tools.Zoom;
import org.achartengine.tools.ZoomListener;

public class GraphicalView extends View
{
  private static final int j = Color.argb(175, 150, 150, 150);
  private AbstractChart a;
  private DefaultRenderer b;
  private Rect c = new Rect();
  private Handler d;
  private RectF e = new RectF();
  private Bitmap f;
  private Bitmap g;
  private Bitmap h;
  private int i = 50;
  private Zoom k;
  private Zoom l;
  private FitZoom m;
  private Paint n = new Paint();
  private ITouchHandler o;
  private float p;
  private float q;
  private boolean r;

  public GraphicalView(Context paramContext, AbstractChart paramAbstractChart)
  {
    super(paramContext);
    this.a = paramAbstractChart;
    this.d = new Handler();
    if ((this.a instanceof XYChart))
      this.b = ((XYChart)this.a).getRenderer();
    while (true)
    {
      if (this.b.isZoomButtonsVisible())
      {
        this.f = BitmapFactory.decodeStream(GraphicalView.class.getResourceAsStream("image/zoom_in.png"));
        this.g = BitmapFactory.decodeStream(GraphicalView.class.getResourceAsStream("image/zoom_out.png"));
        this.h = BitmapFactory.decodeStream(GraphicalView.class.getResourceAsStream("image/zoom-1.png"));
      }
      if (((this.b instanceof XYMultipleSeriesRenderer)) && (((XYMultipleSeriesRenderer)this.b).getMarginsColor() == 0))
        ((XYMultipleSeriesRenderer)this.b).setMarginsColor(this.n.getColor());
      if (((this.b.isZoomEnabled()) && (this.b.isZoomButtonsVisible())) || (this.b.isExternalZoomEnabled()))
      {
        this.k = new Zoom(this.a, true, this.b.getZoomRate());
        this.l = new Zoom(this.a, false, this.b.getZoomRate());
        this.m = new FitZoom(this.a);
      }
      try
      {
        int i2 = Integer.valueOf(Build.VERSION.SDK).intValue();
        i1 = i2;
        if (i1 < 7)
        {
          this.o = new TouchHandlerOld(this, this.a);
          return;
          this.b = ((RoundChart)this.a).getRenderer();
        }
      }
      catch (Exception localException)
      {
        while (true)
          int i1 = 7;
        this.o = new TouchHandler(this, this.a);
      }
    }
  }

  public void addPanListener(PanListener paramPanListener)
  {
    this.o.addPanListener(paramPanListener);
  }

  public void addZoomListener(ZoomListener paramZoomListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      if (this.k != null)
      {
        this.k.addZoomListener(paramZoomListener);
        this.l.addZoomListener(paramZoomListener);
      }
      if (paramBoolean2)
        this.o.addZoomListener(paramZoomListener);
    }
  }

  public AbstractChart getChart()
  {
    return this.a;
  }

  public SeriesSelection getCurrentSeriesAndPoint()
  {
    return this.a.getSeriesAndPointForScreenCoordinate(new Point(this.p, this.q));
  }

  protected RectF getZoomRectangle()
  {
    return this.e;
  }

  public boolean isChartDrawn()
  {
    return this.r;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    int i1 = 0;
    super.onDraw(paramCanvas);
    paramCanvas.getClipBounds(this.c);
    int i2 = this.c.top;
    int i3 = this.c.left;
    int i4 = this.c.width();
    int i5 = this.c.height();
    if (this.b.isInScroll())
    {
      i4 = getMeasuredWidth();
      i5 = getMeasuredHeight();
      i2 = 0;
    }
    while (true)
    {
      this.a.draw(paramCanvas, i1, i2, i4, i5, this.n);
      if ((this.b != null) && (this.b.isZoomEnabled()) && (this.b.isZoomButtonsVisible()))
      {
        this.n.setColor(j);
        this.i = Math.max(this.i, Math.min(i4, i5) / 7);
        this.e.set(i1 + i4 - 3 * this.i, i2 + i5 - 0.775F * this.i, i1 + i4, i2 + i5);
        paramCanvas.drawRoundRect(this.e, this.i / 3, this.i / 3, this.n);
        float f1 = i2 + i5 - 0.625F * this.i;
        paramCanvas.drawBitmap(this.f, i1 + i4 - 2.75F * this.i, f1, null);
        paramCanvas.drawBitmap(this.g, i1 + i4 - 1.75F * this.i, f1, null);
        paramCanvas.drawBitmap(this.h, i1 + i4 - 0.75F * this.i, f1, null);
      }
      this.r = true;
      return;
      i1 = i3;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      this.p = paramMotionEvent.getX();
      this.q = paramMotionEvent.getY();
    }
    if ((this.b != null) && (this.r) && ((this.b.isPanEnabled()) || (this.b.isZoomEnabled())) && (this.o.handleTouch(paramMotionEvent)))
      return true;
    return super.onTouchEvent(paramMotionEvent);
  }

  public void removePanListener(PanListener paramPanListener)
  {
    this.o.removePanListener(paramPanListener);
  }

  public void removeZoomListener(ZoomListener paramZoomListener)
  {
    try
    {
      if (this.k != null)
      {
        this.k.removeZoomListener(paramZoomListener);
        this.l.removeZoomListener(paramZoomListener);
      }
      this.o.removeZoomListener(paramZoomListener);
      return;
    }
    finally
    {
    }
  }

  public void repaint()
  {
    this.d.post(new GraphicalView.1(this));
  }

  public void repaint(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d.post(new GraphicalView.2(this, paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public void setZoomRate(float paramFloat)
  {
    if ((this.k != null) && (this.l != null))
    {
      this.k.setZoomRate(paramFloat);
      this.l.setZoomRate(paramFloat);
    }
  }

  public Bitmap toBitmap()
  {
    setDrawingCacheEnabled(false);
    if (!isDrawingCacheEnabled())
      setDrawingCacheEnabled(true);
    if (this.b.isApplyBackgroundColor())
      setDrawingCacheBackgroundColor(this.b.getBackgroundColor());
    setDrawingCacheQuality(1048576);
    return getDrawingCache(true);
  }

  public double[] toRealPoint(int paramInt)
  {
    if ((this.a instanceof XYChart))
      return ((XYChart)this.a).toRealPoint(this.p, this.q, paramInt);
    return null;
  }

  public void zoomIn()
  {
    if (this.k != null)
    {
      this.k.apply(0);
      repaint();
    }
  }

  public void zoomOut()
  {
    if (this.l != null)
    {
      this.l.apply(0);
      repaint();
    }
  }

  public void zoomReset()
  {
    if (this.m != null)
    {
      this.m.apply();
      this.k.notifyZoomResetListeners();
      repaint();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.GraphicalView
 * JD-Core Version:    0.6.2
 */