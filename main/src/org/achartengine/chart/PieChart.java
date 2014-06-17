package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.CategorySeries;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

public class PieChart extends RoundChart
{
  private PieMapper a = new PieMapper();

  public PieChart(CategorySeries paramCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    super(paramCategorySeries, paramDefaultRenderer);
  }

  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.mRenderer.isAntialiasing());
    paramPaint.setStyle(Paint.Style.FILL);
    paramPaint.setTextSize(this.mRenderer.getLabelsTextSize());
    int i = getLegendSize(this.mRenderer, paramInt4 / 5, 0.0F);
    int j = paramInt1 + paramInt3;
    int k = this.mDataset.getItemCount();
    String[] arrayOfString = new String[k];
    int m = 0;
    double d1 = 0.0D;
    if (m >= k)
      if (!this.mRenderer.isFitLegend())
        break label843;
    label435: label827: label843: for (int n = drawLegend(paramCanvas, this.mRenderer, arrayOfString, paramInt1, j, paramInt2, paramInt3, paramInt4, i, paramPaint, true); ; n = i)
    {
      int i1 = paramInt2 + paramInt4 - n;
      drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
      float f1 = this.mRenderer.getStartAngle();
      int i2 = (int)(0.35D * Math.min(Math.abs(j - paramInt1), Math.abs(i1 - paramInt2)) * this.mRenderer.getScale());
      if (this.mCenterX == 2147483647)
        this.mCenterX = ((paramInt1 + j) / 2);
      if (this.mCenterY == 2147483647)
        this.mCenterY = ((i1 + paramInt2) / 2);
      this.a.setDimensions(i2, this.mCenterX, this.mCenterY);
      if (this.a.areAllSegmentPresent(k));
      float f2;
      float f3;
      RectF localRectF;
      ArrayList localArrayList;
      int i4;
      for (int i3 = 0; ; i3 = 1)
      {
        if (i3 != 0)
          this.a.clearPieSegments();
        f2 = 0.9F * i2;
        f3 = 1.1F * i2;
        localRectF = new RectF(this.mCenterX - i2, this.mCenterY - i2, i2 + this.mCenterX, i2 + this.mCenterY);
        localArrayList = new ArrayList();
        i4 = 0;
        if (i4 < k)
          break label435;
        localArrayList.clear();
        drawLegend(paramCanvas, this.mRenderer, arrayOfString, paramInt1, j, paramInt2, paramInt3, paramInt4, n, paramPaint, false);
        drawTitle(paramCanvas, paramInt1, paramInt2, paramInt3, paramPaint);
        return;
        double d2 = d1 + this.mDataset.getValue(m);
        arrayOfString[m] = this.mDataset.getCategory(m);
        m++;
        d1 = d2;
        break;
      }
      SimpleSeriesRenderer localSimpleSeriesRenderer = this.mRenderer.getSeriesRendererAt(i4);
      label492: float f4;
      float f5;
      if (localSimpleSeriesRenderer.isGradientEnabled())
      {
        paramPaint.setShader(new RadialGradient(this.mCenterX, this.mCenterY, f3, localSimpleSeriesRenderer.getGradientStartColor(), localSimpleSeriesRenderer.getGradientStopColor(), Shader.TileMode.MIRROR));
        f4 = (float)this.mDataset.getValue(i4);
        f5 = (float)(360.0D * (f4 / d1));
        if (!localSimpleSeriesRenderer.isHighlighted())
          break label827;
        double d3 = Math.toRadians(90.0F - (f1 + f5 / 2.0F));
        float f8 = (float)(0.1D * i2 * Math.sin(d3));
        float f9 = (float)(0.1D * i2 * Math.cos(d3));
        localRectF.offset(f8, f9);
        paramCanvas.drawArc(localRectF, f1, f5, true, paramPaint);
        localRectF.offset(-f8, -f9);
      }
      while (true)
      {
        paramPaint.setColor(localSimpleSeriesRenderer.getColor());
        paramPaint.setShader(null);
        drawLabel(paramCanvas, this.mDataset.getCategory(i4), this.mRenderer, localArrayList, this.mCenterX, this.mCenterY, f2, f3, f1, f5, paramInt1, j, this.mRenderer.getLabelsColor(), paramPaint, true, false);
        if (this.mRenderer.isDisplayValues())
        {
          String str = getLabel(this.mRenderer.getSeriesRendererAt(i4).getChartValuesFormat(), this.mDataset.getValue(i4));
          DefaultRenderer localDefaultRenderer = this.mRenderer;
          int i5 = this.mCenterX;
          int i6 = this.mCenterY;
          float f6 = f2 / 2.0F;
          float f7 = f3 / 2.0F;
          int i7 = this.mRenderer.getLabelsColor();
          drawLabel(paramCanvas, str, localDefaultRenderer, localArrayList, i5, i6, f6, f7, f1, f5, paramInt1, j, i7, paramPaint, false, true);
        }
        if (i3 != 0)
          this.a.addPieSegment(i4, f4, f1, f5);
        f1 += f5;
        i4++;
        break;
        paramPaint.setColor(localSimpleSeriesRenderer.getColor());
        break label492;
        paramCanvas.drawArc(localRectF, f1, f5, true, paramPaint);
      }
    }
  }

  public SeriesSelection getSeriesAndPointForScreenCoordinate(Point paramPoint)
  {
    return this.a.getSeriesAndPointForScreenCoordinate(paramPoint);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.PieChart
 * JD-Core Version:    0.6.2
 */