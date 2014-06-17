package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import org.achartengine.model.MultipleCategorySeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

public class DoughnutChart extends RoundChart
{
  private MultipleCategorySeries a;
  private int b;

  public DoughnutChart(MultipleCategorySeries paramMultipleCategorySeries, DefaultRenderer paramDefaultRenderer)
  {
    super(null, paramDefaultRenderer);
    this.a = paramMultipleCategorySeries;
  }

  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.mRenderer.isAntialiasing());
    paramPaint.setStyle(Paint.Style.FILL);
    paramPaint.setTextSize(this.mRenderer.getLabelsTextSize());
    int i = getLegendSize(this.mRenderer, paramInt4 / 5, 0.0F);
    int j = paramInt1 + paramInt3;
    int k = this.a.getCategoriesCount();
    String[] arrayOfString1 = new String[k];
    int m = 0;
    if (m >= k)
      if (!this.mRenderer.isFitLegend())
        break label750;
    label365: label750: for (int n = drawLegend(paramCanvas, this.mRenderer, arrayOfString1, paramInt1, j, paramInt2, paramInt3, paramInt4, i, paramPaint, true); ; n = i)
    {
      int i1 = paramInt2 + paramInt4 - n;
      drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
      this.b = 7;
      int i2 = Math.min(Math.abs(j - paramInt1), Math.abs(i1 - paramInt2));
      double d1 = 0.35D * this.mRenderer.getScale();
      double d2 = 0.2D / k;
      int i3 = (int)(d1 * i2);
      if (this.mCenterX == 2147483647)
        this.mCenterX = ((paramInt1 + j) / 2);
      if (this.mCenterY == 2147483647)
        this.mCenterY = ((i1 + paramInt2) / 2);
      float f1 = 0.9F * i3;
      float f2 = 1.1F * i3;
      ArrayList localArrayList = new ArrayList();
      int i4 = 0;
      int i5 = i3;
      if (i4 >= k)
      {
        localArrayList.clear();
        drawLegend(paramCanvas, this.mRenderer, arrayOfString1, paramInt1, j, paramInt2, paramInt3, paramInt4, n, paramPaint, false);
        drawTitle(paramCanvas, paramInt1, paramInt2, paramInt3, paramPaint);
        return;
        arrayOfString1[m] = this.a.getCategory(m);
        m++;
        break;
      }
      int i6 = this.a.getItemCount(i4);
      String[] arrayOfString2 = new String[i6];
      int i7 = 0;
      double d3 = 0.0D;
      float f3;
      RectF localRectF;
      int i8;
      int i12;
      if (i7 >= i6)
      {
        f3 = this.mRenderer.getStartAngle();
        localRectF = new RectF(this.mCenterX - i5, this.mCenterY - i5, i5 + this.mCenterX, i5 + this.mCenterY);
        i8 = 0;
        if (i8 < i6)
          break label601;
        i12 = (int)(i5 - d2 * i2);
        f1 = (float)(f1 - (d2 * i2 - 2.0D));
        if (this.mRenderer.getBackgroundColor() == 0)
          break label741;
        paramPaint.setColor(this.mRenderer.getBackgroundColor());
      }
      while (true)
      {
        paramPaint.setStyle(Paint.Style.FILL);
        paramCanvas.drawArc(new RectF(this.mCenterX - i12, this.mCenterY - i12, i12 + this.mCenterX, i12 + this.mCenterY), 0.0F, 360.0F, true, paramPaint);
        int i13 = i12 - 1;
        i4++;
        i5 = i13;
        break;
        double d4 = d3 + this.a.getValues(i4)[i7];
        arrayOfString2[i7] = this.a.getTitles(i4)[i7];
        i7++;
        d3 = d4;
        break label365;
        paramPaint.setColor(this.mRenderer.getSeriesRendererAt(i8).getColor());
        float f4 = (float)(360.0D * ((float)this.a.getValues(i4)[i8] / d3));
        paramCanvas.drawArc(localRectF, f3, f4, true, paramPaint);
        String str = this.a.getTitles(i4)[i8];
        DefaultRenderer localDefaultRenderer = this.mRenderer;
        int i9 = this.mCenterX;
        int i10 = this.mCenterY;
        int i11 = this.mRenderer.getLabelsColor();
        drawLabel(paramCanvas, str, localDefaultRenderer, localArrayList, i9, i10, f1, f2, f3, f4, paramInt1, j, i11, paramPaint, true, false);
        f3 += f4;
        i8++;
        break label425;
        paramPaint.setColor(-1);
      }
    }
  }

  public void drawLegendShape(Canvas paramCanvas, SimpleSeriesRenderer paramSimpleSeriesRenderer, float paramFloat1, float paramFloat2, int paramInt, Paint paramPaint)
  {
    this.b = (-1 + this.b);
    paramCanvas.drawCircle(10.0F + paramFloat1 - this.b, paramFloat2, this.b, paramPaint);
  }

  public int getLegendShapeWidth(int paramInt)
  {
    return 10;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.DoughnutChart
 * JD-Core Version:    0.6.2
 */