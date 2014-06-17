package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import org.achartengine.model.Point;
import org.achartengine.model.SeriesSelection;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.BasicStroke;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation;
import org.achartengine.renderer.XYSeriesRenderer;
import org.achartengine.util.MathHelper;

public abstract class XYChart extends AbstractChart
{
  private float a;
  private float b;
  private Point c;
  private Rect d;
  private final Map<Integer, double[]> e = new HashMap();
  private Map<Integer, List<ClickableArea>> f = new HashMap();
  protected XYMultipleSeriesDataset mDataset;
  protected XYMultipleSeriesRenderer mRenderer;

  protected XYChart()
  {
  }

  public XYChart(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    this.mDataset = paramXYMultipleSeriesDataset;
    this.mRenderer = paramXYMultipleSeriesRenderer;
  }

  private static int a(Paint.Align paramAlign)
  {
    int i = 4;
    if (paramAlign == Paint.Align.LEFT)
      i = -4;
    return i;
  }

  private static List<Double> a(List<Double> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList);
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      Double localDouble = (Double)localIterator.next();
      if (localDouble.isNaN())
        localArrayList.remove(localDouble);
    }
  }

  private void a(Canvas paramCanvas, float paramFloat, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramCanvas.scale(1.0F / this.a, this.a);
      paramCanvas.translate(this.b, -this.b);
      paramCanvas.rotate(-paramFloat, this.c.getX(), this.c.getY());
      return;
    }
    paramCanvas.rotate(paramFloat, this.c.getX(), this.c.getY());
    paramCanvas.translate(-this.b, this.b);
    paramCanvas.scale(this.a, 1.0F / this.a);
  }

  private static void a(Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat, Paint.Style paramStyle, PathEffect paramPathEffect, Paint paramPaint)
  {
    paramPaint.setStrokeCap(paramCap);
    paramPaint.setStrokeJoin(paramJoin);
    paramPaint.setStrokeMiter(paramFloat);
    paramPaint.setPathEffect(paramPathEffect);
    paramPaint.setStyle(paramStyle);
  }

  protected abstract ClickableArea[] clickableAreasForPoints(List<Float> paramList, List<Double> paramList1, float paramFloat, int paramInt1, int paramInt2);

  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.mRenderer.isAntialiasing());
    int i = getLegendSize(this.mRenderer, paramInt4 / 5, this.mRenderer.getAxisTitleTextSize());
    int[] arrayOfInt = this.mRenderer.getMargins();
    int j = paramInt1 + arrayOfInt[1];
    int k = paramInt2 + arrayOfInt[0];
    int m = paramInt1 + paramInt3 - arrayOfInt[3];
    int n = this.mDataset.getSeriesCount();
    String[] arrayOfString = new String[n];
    int i1 = 0;
    int i2;
    int i3;
    label306: XYMultipleSeriesRenderer.Orientation localOrientation;
    int i4;
    int i5;
    label344: int i6;
    int i7;
    label361: int i8;
    int i9;
    label453: int i10;
    if (i1 >= n)
    {
      if ((!this.mRenderer.isFitLegend()) || (!this.mRenderer.isShowLegend()))
        break label3535;
      i2 = drawLegend(paramCanvas, this.mRenderer, arrayOfString, j, m, paramInt2, paramInt3, paramInt4, i, paramPaint, true);
      i3 = paramInt2 + paramInt4 - arrayOfInt[2] - i2;
      if (this.d == null)
        this.d = new Rect();
      this.d.set(j, k, m, i3);
      drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
      if ((paramPaint.getTypeface() == null) || ((this.mRenderer.getTextTypeface() != null) && (paramPaint.getTypeface().equals(this.mRenderer.getTextTypeface()))) || (!paramPaint.getTypeface().toString().equals(this.mRenderer.getTextTypefaceName())) || (paramPaint.getTypeface().getStyle() != this.mRenderer.getTextTypefaceStyle()))
      {
        if (this.mRenderer.getTextTypeface() == null)
          break label495;
        paramPaint.setTypeface(this.mRenderer.getTextTypeface());
      }
      localOrientation = this.mRenderer.getOrientation();
      if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
        break label3524;
      int i37 = m - i2;
      i4 = i3 + (i2 - 20);
      i5 = i37;
      i6 = localOrientation.getAngle();
      if (i6 != 90)
        break label521;
      i7 = 1;
      this.a = (paramInt4 / paramInt3);
      this.b = (Math.abs(paramInt3 - paramInt4) / 2);
      if (this.a < 1.0F)
        this.b = (-1.0F * this.b);
      this.c = new Point((paramInt1 + paramInt3) / 2, (paramInt2 + paramInt4) / 2);
      if (i7 != 0)
        a(paramCanvas, i6, false);
      i8 = -2147483647;
      i9 = 0;
      if (i9 < n)
        break label527;
      i10 = i8 + 1;
      if (i10 >= 0)
        break label552;
    }
    label495: double[] arrayOfDouble1;
    label521: label527: label552: double[] arrayOfDouble2;
    double[] arrayOfDouble3;
    double[] arrayOfDouble4;
    boolean[] arrayOfBoolean1;
    boolean[] arrayOfBoolean2;
    boolean[] arrayOfBoolean3;
    boolean[] arrayOfBoolean4;
    int i11;
    label603: double[] arrayOfDouble5;
    double[] arrayOfDouble6;
    int i12;
    label625: int i14;
    label635: int i15;
    label645: int i16;
    label655: label794: int i20;
    label812: boolean bool2;
    boolean bool3;
    int i31;
    label1022: float f4;
    int i30;
    label1133: int i27;
    label1184: label1235: int i28;
    label1293: label1354: int i22;
    label1382: 
    do
    {
      return;
      arrayOfString[i1] = this.mDataset.getSeriesAt(i1).getTitle();
      i1++;
      break;
      paramPaint.setTypeface(Typeface.create(this.mRenderer.getTextTypefaceName(), this.mRenderer.getTextTypefaceStyle()));
      break label306;
      i7 = 0;
      break label361;
      i8 = Math.max(i8, this.mDataset.getSeriesAt(i9).getScaleNumber());
      i9++;
      break label453;
      arrayOfDouble1 = new double[i10];
      arrayOfDouble2 = new double[i10];
      arrayOfDouble3 = new double[i10];
      arrayOfDouble4 = new double[i10];
      arrayOfBoolean1 = new boolean[i10];
      arrayOfBoolean2 = new boolean[i10];
      arrayOfBoolean3 = new boolean[i10];
      arrayOfBoolean4 = new boolean[i10];
      i11 = 0;
      if (i11 < i10)
        break label1669;
      arrayOfDouble5 = new double[i10];
      arrayOfDouble6 = new double[i10];
      i12 = 0;
      if (i12 < n)
        break label1822;
      i14 = 0;
      if (i14 < i10)
        break label2074;
      i15 = 0;
      i16 = 0;
      if (i15 < n)
        break label2192;
      drawBackground(this.mRenderer, paramCanvas, paramInt1, i4, paramInt3, paramInt4 - i4, paramPaint, true, this.mRenderer.getMarginsColor());
      drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, paramInt3, arrayOfInt[0], paramPaint, true, this.mRenderer.getMarginsColor());
      if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        break label2219;
      drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, j - paramInt1, paramInt4 - paramInt2, paramPaint, true, this.mRenderer.getMarginsColor());
      XYMultipleSeriesRenderer localXYMultipleSeriesRenderer4 = this.mRenderer;
      int i34 = arrayOfInt[3];
      int i35 = paramInt4 - paramInt2;
      int i36 = this.mRenderer.getMarginsColor();
      drawBackground(localXYMultipleSeriesRenderer4, paramCanvas, i5, paramInt2, i34, i35, paramPaint, true, i36);
      if ((!this.mRenderer.isShowLabels()) || (i16 == 0))
        break label2306;
      i20 = 1;
      boolean bool1 = this.mRenderer.isShowGridX();
      bool2 = this.mRenderer.isShowTickMarks();
      bool3 = this.mRenderer.isShowCustomTextGridY();
      if ((i20 != 0) || (bool1))
      {
        List localList = a(getXLabels(arrayOfDouble1[0], arrayOfDouble2[0], this.mRenderer.getXLabels()));
        Map localMap = getYLabels(arrayOfDouble3, arrayOfDouble4, i10);
        if (this.mRenderer.isShowLabels())
        {
          paramPaint.setColor(this.mRenderer.getXLabelsColor());
          paramPaint.setTextSize(this.mRenderer.getLabelsTextSize());
          paramPaint.setTextAlign(this.mRenderer.getXLabelsAlign());
        }
        Double[] arrayOfDouble7 = this.mRenderer.getXTextLabelLocations();
        double d5 = arrayOfDouble5[0];
        double d6 = arrayOfDouble1[0];
        double d7 = arrayOfDouble2[0];
        drawXLabels(localList, arrayOfDouble7, paramCanvas, paramPaint, j, k, i4, d5, d6, d7);
        drawYLabels(localMap, paramCanvas, paramPaint, i10, j, i5, i4, arrayOfDouble6, arrayOfDouble3);
        if (i20 != 0)
        {
          paramPaint.setColor(this.mRenderer.getLabelsColor());
          i31 = 0;
          if (i31 < i10)
            break label2312;
        }
        if (i20 != 0)
        {
          paramPaint.setColor(this.mRenderer.getLabelsColor());
          f4 = this.mRenderer.getAxisTitleTextSize();
          paramPaint.setTextSize(f4);
          paramPaint.setTextAlign(Paint.Align.CENTER);
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            break label2810;
          drawText(paramCanvas, this.mRenderer.getXTitle(), paramInt1 + paramInt3 / 2, f4 + (i4 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F + this.mRenderer.getXLabelsPadding()), paramPaint, 0.0F);
          i30 = 0;
          if (i30 < i10)
            break label2724;
          paramPaint.setTextSize(this.mRenderer.getChartTitleTextSize());
          drawText(paramCanvas, this.mRenderer.getChartTitle(), paramInt1 + paramInt3 / 2, paramInt2 + this.mRenderer.getChartTitleTextSize(), paramPaint, 0.0F);
        }
      }
      if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        break label2929;
      XYMultipleSeriesRenderer localXYMultipleSeriesRenderer3 = this.mRenderer;
      int i29 = paramInt2 + (int)this.mRenderer.getXLabelsPadding();
      drawLegend(paramCanvas, localXYMultipleSeriesRenderer3, arrayOfString, j, i5, i29, paramInt3, paramInt4, i2, paramPaint, false);
      if (this.mRenderer.isShowAxes())
      {
        paramPaint.setColor(this.mRenderer.getXAxisColor());
        paramCanvas.drawLine(j, i4, i5, i4, paramPaint);
        paramPaint.setColor(this.mRenderer.getYAxisColor());
        i27 = 0;
        i28 = 0;
        if ((i28 < i10) && (i27 == 0))
          break label3001;
        if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
          break label3031;
        paramCanvas.drawLine(j, k, j, i4, paramPaint);
        if (i27 != 0)
          paramCanvas.drawLine(i5, k, i5, i4, paramPaint);
      }
      if (i7 != 0)
        a(paramCanvas, i6, true);
      this.f = new HashMap();
      i22 = 0;
    }
    while (i22 >= n);
    XYSeries localXYSeries2 = this.mDataset.getSeriesAt(i22);
    int i23 = localXYSeries2.getScaleNumber();
    XYSeriesRenderer localXYSeriesRenderer;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    float f1;
    LinkedList localLinkedList;
    if (localXYSeries2.getItemCount() != 0)
    {
      localXYSeriesRenderer = (XYSeriesRenderer)this.mRenderer.getSeriesRendererAt(i22);
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      f1 = Math.min(i4, (float)(i4 + arrayOfDouble6[i23] * arrayOfDouble3[i23]));
      localLinkedList = new LinkedList();
      this.f.put(Integer.valueOf(i22), localLinkedList);
    }
    while (true)
    {
      int i24;
      int i25;
      Rect localRect;
      int i26;
      label1669: label1822: label2219: label2810: double d8;
      try
      {
        SortedMap localSortedMap = localXYSeries2.getRange(arrayOfDouble1[i23], arrayOfDouble2[i23], localXYSeriesRenderer.isDisplayBoundingPoints());
        i24 = -1;
        Iterator localIterator = localSortedMap.entrySet().iterator();
        if (!localIterator.hasNext())
        {
          i25 = localXYSeries2.getAnnotationCount();
          if (i25 > 0)
          {
            paramPaint.setColor(localXYSeriesRenderer.getAnnotationsColor());
            paramPaint.setTextSize(localXYSeriesRenderer.getAnnotationsTextSize());
            paramPaint.setTextAlign(localXYSeriesRenderer.getAnnotationsTextAlign());
            localRect = new Rect();
            i26 = 0;
            break label3542;
          }
          if (localArrayList1.size() > 0)
          {
            drawSeries(localXYSeries2, paramCanvas, paramPaint, localArrayList1, localXYSeriesRenderer, f1, i22, localOrientation, i24);
            localLinkedList.addAll(Arrays.asList(clickableAreasForPoints(localArrayList1, localArrayList2, f1, i22, i24)));
          }
          i22++;
          break label1382;
          arrayOfDouble1[i11] = this.mRenderer.getXAxisMin(i11);
          arrayOfDouble2[i11] = this.mRenderer.getXAxisMax(i11);
          arrayOfDouble3[i11] = this.mRenderer.getYAxisMin(i11);
          arrayOfDouble4[i11] = this.mRenderer.getYAxisMax(i11);
          arrayOfBoolean1[i11] = this.mRenderer.isMinXSet(i11);
          arrayOfBoolean2[i11] = this.mRenderer.isMaxXSet(i11);
          arrayOfBoolean3[i11] = this.mRenderer.isMinYSet(i11);
          arrayOfBoolean4[i11] = this.mRenderer.isMaxYSet(i11);
          if (this.e.get(Integer.valueOf(i11)) == null)
            this.e.put(Integer.valueOf(i11), new double[4]);
          i11++;
          break label603;
          XYSeries localXYSeries1 = this.mDataset.getSeriesAt(i12);
          int i13 = localXYSeries1.getScaleNumber();
          if (localXYSeries1.getItemCount() != 0)
          {
            if (arrayOfBoolean1[i13] == 0)
            {
              double d4 = localXYSeries1.getMinX();
              arrayOfDouble1[i13] = Math.min(arrayOfDouble1[i13], d4);
              ((double[])this.e.get(Integer.valueOf(i13)))[0] = arrayOfDouble1[i13];
            }
            if (arrayOfBoolean2[i13] == 0)
            {
              double d3 = localXYSeries1.getMaxX();
              arrayOfDouble2[i13] = Math.max(arrayOfDouble2[i13], d3);
              ((double[])this.e.get(Integer.valueOf(i13)))[1] = arrayOfDouble2[i13];
            }
            if (arrayOfBoolean3[i13] == 0)
            {
              double d2 = localXYSeries1.getMinY();
              arrayOfDouble3[i13] = Math.min(arrayOfDouble3[i13], (float)d2);
              ((double[])this.e.get(Integer.valueOf(i13)))[2] = arrayOfDouble3[i13];
            }
            if (arrayOfBoolean4[i13] == 0)
            {
              double d1 = localXYSeries1.getMaxY();
              arrayOfDouble4[i13] = Math.max(arrayOfDouble4[i13], (float)d1);
              ((double[])this.e.get(Integer.valueOf(i13)))[3] = arrayOfDouble4[i13];
            }
          }
          i12++;
          break label625;
          label2074: if (arrayOfDouble2[i14] - arrayOfDouble1[i14] != 0.0D)
            arrayOfDouble5[i14] = ((i5 - j) / (arrayOfDouble2[i14] - arrayOfDouble1[i14]));
          if (arrayOfDouble4[i14] - arrayOfDouble3[i14] != 0.0D)
            arrayOfDouble6[i14] = ((float)((i4 - k) / (arrayOfDouble4[i14] - arrayOfDouble3[i14])));
          if (i14 > 0)
          {
            arrayOfDouble5[i14] = arrayOfDouble5[0];
            arrayOfDouble1[i14] = arrayOfDouble1[0];
            arrayOfDouble2[i14] = arrayOfDouble2[0];
          }
          i14++;
          break label635;
          label2192: if (this.mDataset.getSeriesAt(i15).getItemCount() != 0)
          {
            i16 = 1;
            break label655;
          }
          i15++;
          break label645;
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            break label794;
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer1 = this.mRenderer;
          int i17 = paramInt3 - i5;
          int i18 = paramInt4 - paramInt2;
          int i19 = this.mRenderer.getMarginsColor();
          drawBackground(localXYMultipleSeriesRenderer1, paramCanvas, i5, paramInt2, i17, i18, paramPaint, true, i19);
          drawBackground(this.mRenderer, paramCanvas, paramInt1, paramInt2, j - paramInt1, paramInt4 - paramInt2, paramPaint, true, this.mRenderer.getMarginsColor());
          break label794;
          label2306: i20 = 0;
          break label812;
          label2312: Paint.Align localAlign = this.mRenderer.getYAxisAlign(i31);
          Double[] arrayOfDouble8 = this.mRenderer.getYTextLabelLocations(i31);
          int i32 = arrayOfDouble8.length;
          int i33 = 0;
          if (i33 >= i32)
          {
            i31++;
            break label1022;
          }
          Double localDouble = arrayOfDouble8[i33];
          float f5;
          String str;
          if ((arrayOfDouble3[i31] <= localDouble.doubleValue()) && (localDouble.doubleValue() <= arrayOfDouble4[i31]))
          {
            f5 = (float)(i4 - arrayOfDouble6[i31] * (localDouble.doubleValue() - arrayOfDouble3[i31]));
            str = this.mRenderer.getYTextLabel(localDouble, i31);
            paramPaint.setColor(this.mRenderer.getYLabelsColor(i31));
            paramPaint.setTextAlign(this.mRenderer.getYLabelsAlign(i31));
            if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
              continue;
            if (localAlign != Paint.Align.LEFT)
              continue;
            if (bool2)
              paramCanvas.drawLine(j + a(localAlign), f5, j, f5, paramPaint);
            drawText(paramCanvas, str, j, f5 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
            if (bool3)
            {
              paramPaint.setColor(this.mRenderer.getGridColor(i31));
              paramCanvas.drawLine(j, f5, i5, f5, paramPaint);
            }
          }
          i33++;
          continue;
          if (bool2)
            paramCanvas.drawLine(i5, f5, i5 + a(localAlign), f5, paramPaint);
          drawText(paramCanvas, str, i5, f5 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
          continue;
          if (bool2)
            paramCanvas.drawLine(i5 - a(localAlign), f5, i5, f5, paramPaint);
          drawText(paramCanvas, str, i5 + 10, f5 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
          if (!bool3)
            continue;
          paramPaint.setColor(this.mRenderer.getGridColor(i31));
          paramCanvas.drawLine(i5, f5, j, f5, paramPaint);
          continue;
          label2724: if (this.mRenderer.getYAxisAlign(i30) == Paint.Align.LEFT)
          {
            drawText(paramCanvas, this.mRenderer.getYTitle(i30), f4 + paramInt1, paramInt2 + paramInt4 / 2, paramPaint, -90.0F);
            i30++;
            break label1133;
          }
          drawText(paramCanvas, this.mRenderer.getYTitle(i30), paramInt1 + paramInt3, paramInt2 + paramInt4 / 2, paramPaint, -90.0F);
          continue;
          if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            break label1184;
          drawText(paramCanvas, this.mRenderer.getXTitle(), paramInt1 + paramInt3 / 2, paramInt2 + paramInt4 - f4 + this.mRenderer.getXLabelsPadding(), paramPaint, -90.0F);
          drawText(paramCanvas, this.mRenderer.getYTitle(), i5 + 20, paramInt2 + paramInt4 / 2, paramPaint, 0.0F);
          paramPaint.setTextSize(this.mRenderer.getChartTitleTextSize());
          drawText(paramCanvas, this.mRenderer.getChartTitle(), f4 + paramInt1, k + paramInt4 / 2, paramPaint, 0.0F);
          break label1184;
          label2929: if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            break label1235;
          a(paramCanvas, i6, true);
          XYMultipleSeriesRenderer localXYMultipleSeriesRenderer2 = this.mRenderer;
          int i21 = paramInt2 + (int)this.mRenderer.getXLabelsPadding();
          drawLegend(paramCanvas, localXYMultipleSeriesRenderer2, arrayOfString, j, i5, i21, paramInt3, paramInt4, i2, paramPaint, false);
          a(paramCanvas, i6, false);
          break label1235;
          label3001: if (this.mRenderer.getYAxisAlign(i28) == Paint.Align.RIGHT)
          {
            i27 = 1;
            i28++;
            break label1293;
          }
          i27 = 0;
          continue;
          label3031: if (localOrientation != XYMultipleSeriesRenderer.Orientation.VERTICAL)
            break label1354;
          paramCanvas.drawLine(i5, k, i5, i4, paramPaint);
          break label1354;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        d8 = ((Double)localEntry.getKey()).doubleValue();
        double d9 = ((Double)localEntry.getValue()).doubleValue();
        if ((i24 < 0) && ((!isNullValue(d9)) || (isRenderNullValues())))
          i24 = localXYSeries2.getIndexForKey(d8);
        localArrayList2.add((Double)localEntry.getKey());
        localArrayList2.add((Double)localEntry.getValue());
        if (!isNullValue(d9))
        {
          localArrayList1.add(Float.valueOf((float)(j + arrayOfDouble5[i23] * (d8 - arrayOfDouble1[i23]))));
          localArrayList1.add(Float.valueOf((float)(i4 - arrayOfDouble6[i23] * (d9 - arrayOfDouble3[i23]))));
          continue;
        }
      }
      finally
      {
      }
      if (isRenderNullValues())
      {
        localArrayList1.add(Float.valueOf((float)(j + arrayOfDouble5[i23] * (d8 - arrayOfDouble1[i23]))));
        localArrayList1.add(Float.valueOf((float)(i4 - arrayOfDouble6[i23] * -arrayOfDouble3[i23])));
      }
      else
      {
        if (localArrayList1.size() > 0)
        {
          drawSeries(localXYSeries2, paramCanvas, paramPaint, localArrayList1, localXYSeriesRenderer, f1, i22, localOrientation, i24);
          localLinkedList.addAll(Arrays.asList(clickableAreasForPoints(localArrayList1, localArrayList2, f1, i22, i24)));
          localArrayList1.clear();
          localArrayList2.clear();
          i24 = -1;
        }
        localLinkedList.add(null);
        continue;
        label3524: label3535: label3542: 
        do
        {
          float f2 = (float)(j + arrayOfDouble5[i23] * (localXYSeries2.getAnnotationX(i26) - arrayOfDouble1[i23]));
          float f3 = (float)(i4 - arrayOfDouble6[i23] * (localXYSeries2.getAnnotationY(i26) - arrayOfDouble3[i23]));
          paramPaint.getTextBounds(localXYSeries2.getAnnotationAt(i26), 0, localXYSeries2.getAnnotationAt(i26).length(), localRect);
          if ((f2 < f2 + localRect.width()) && (f3 < paramCanvas.getHeight()))
            drawString(paramCanvas, localXYSeries2.getAnnotationAt(i26), f2, f3, paramPaint);
          i26++;
          continue;
          i4 = i3;
          i5 = m;
          break label344;
          i2 = i;
          break;
        }
        while (i26 < i25);
      }
    }
  }

  protected void drawChartValuesText(Canvas paramCanvas, XYSeries paramXYSeries, XYSeriesRenderer paramXYSeriesRenderer, Paint paramPaint, List<Float> paramList, int paramInt1, int paramInt2)
  {
    float f1;
    float f2;
    int j;
    if (paramList.size() > 1)
    {
      f1 = ((Float)paramList.get(0)).floatValue();
      f2 = ((Float)paramList.get(1)).floatValue();
      j = 0;
      if (j < paramList.size());
    }
    while (true)
    {
      return;
      if (j == 2)
        if ((Math.abs(((Float)paramList.get(2)).floatValue() - ((Float)paramList.get(0)).floatValue()) > paramXYSeriesRenderer.getDisplayChartValuesDistance()) || (Math.abs(((Float)paramList.get(3)).floatValue() - ((Float)paramList.get(1)).floatValue()) > paramXYSeriesRenderer.getDisplayChartValuesDistance()))
        {
          drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2)), ((Float)paramList.get(0)).floatValue(), ((Float)paramList.get(1)).floatValue() - paramXYSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
          drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2 + 1)), ((Float)paramList.get(2)).floatValue(), ((Float)paramList.get(3)).floatValue() - paramXYSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
          f1 = ((Float)paramList.get(2)).floatValue();
        }
      for (f2 = ((Float)paramList.get(3)).floatValue(); ; f2 = ((Float)paramList.get(j + 1)).floatValue())
      {
        do
        {
          j += 2;
          break;
        }
        while ((j <= 2) || ((Math.abs(((Float)paramList.get(j)).floatValue() - f1) <= paramXYSeriesRenderer.getDisplayChartValuesDistance()) && (Math.abs(((Float)paramList.get(j + 1)).floatValue() - f2) <= paramXYSeriesRenderer.getDisplayChartValuesDistance())));
        drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2 + j / 2)), ((Float)paramList.get(j)).floatValue(), ((Float)paramList.get(j + 1)).floatValue() - paramXYSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
        f1 = ((Float)paramList.get(j)).floatValue();
      }
      for (int i = 0; i < paramList.size(); i += 2)
        drawText(paramCanvas, getLabel(paramXYSeriesRenderer.getChartValuesFormat(), paramXYSeries.getY(paramInt2 + i / 2)), ((Float)paramList.get(i)).floatValue(), ((Float)paramList.get(i + 1)).floatValue() - paramXYSeriesRenderer.getChartValuesSpacing(), paramPaint, 0.0F);
    }
  }

  public abstract void drawSeries(Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, int paramInt2);

  protected void drawSeries(XYSeries paramXYSeries, Canvas paramCanvas, Paint paramPaint, List<Float> paramList, XYSeriesRenderer paramXYSeriesRenderer, float paramFloat, int paramInt1, XYMultipleSeriesRenderer.Orientation paramOrientation, int paramInt2)
  {
    BasicStroke localBasicStroke = paramXYSeriesRenderer.getStroke();
    Paint.Cap localCap = paramPaint.getStrokeCap();
    Paint.Join localJoin = paramPaint.getStrokeJoin();
    float f1 = paramPaint.getStrokeMiter();
    PathEffect localPathEffect = paramPaint.getPathEffect();
    Paint.Style localStyle = paramPaint.getStyle();
    if (localBasicStroke != null)
    {
      float[] arrayOfFloat = localBasicStroke.getIntervals();
      DashPathEffect localDashPathEffect = null;
      if (arrayOfFloat != null)
        localDashPathEffect = new DashPathEffect(localBasicStroke.getIntervals(), localBasicStroke.getPhase());
      a(localBasicStroke.getCap(), localBasicStroke.getJoin(), localBasicStroke.getMiter(), Paint.Style.FILL_AND_STROKE, localDashPathEffect, paramPaint);
    }
    drawSeries(paramCanvas, paramPaint, paramList, paramXYSeriesRenderer, paramFloat, paramInt1, paramInt2);
    if (isRenderPoints(paramXYSeriesRenderer))
    {
      ScatterChart localScatterChart = getPointsChart();
      if (localScatterChart != null)
        localScatterChart.drawSeries(paramCanvas, paramPaint, paramList, paramXYSeriesRenderer, paramFloat, paramInt1, paramInt2);
    }
    paramPaint.setTextSize(paramXYSeriesRenderer.getChartValuesTextSize());
    if (paramOrientation == XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
      paramPaint.setTextAlign(Paint.Align.CENTER);
    while (true)
    {
      if (paramXYSeriesRenderer.isDisplayChartValues())
      {
        paramPaint.setTextAlign(paramXYSeriesRenderer.getChartValuesTextAlign());
        drawChartValuesText(paramCanvas, paramXYSeries, paramXYSeriesRenderer, paramPaint, paramList, paramInt1, paramInt2);
      }
      if (localBasicStroke != null)
        a(localCap, localJoin, f1, localStyle, localPathEffect, paramPaint);
      return;
      paramPaint.setTextAlign(Paint.Align.LEFT);
    }
  }

  protected void drawText(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, Paint paramPaint, float paramFloat3)
  {
    float f1 = paramFloat3 + -this.mRenderer.getOrientation().getAngle();
    if (f1 != 0.0F)
      paramCanvas.rotate(f1, paramFloat1, paramFloat2);
    drawString(paramCanvas, paramString, paramFloat1, paramFloat2, paramPaint);
    if (f1 != 0.0F)
      paramCanvas.rotate(-f1, paramFloat1, paramFloat2);
  }

  protected void drawXLabels(List<Double> paramList, Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    int i = paramList.size();
    boolean bool1 = this.mRenderer.isShowLabels();
    boolean bool2 = this.mRenderer.isShowGridY();
    boolean bool3 = this.mRenderer.isShowTickMarks();
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        drawXTextLabels(paramArrayOfDouble, paramCanvas, paramPaint, bool1, paramInt1, paramInt2, paramInt3, paramDouble1, paramDouble2, paramDouble3);
        return;
      }
      double d1 = ((Double)paramList.get(j)).doubleValue();
      float f1 = (float)(paramInt1 + paramDouble1 * (d1 - paramDouble2));
      if (bool1)
      {
        paramPaint.setColor(this.mRenderer.getXLabelsColor());
        if (bool3)
          paramCanvas.drawLine(f1, paramInt3, f1, paramInt3 + this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint);
        drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d1), f1, paramInt3 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F + this.mRenderer.getXLabelsPadding(), paramPaint, this.mRenderer.getXLabelsAngle());
      }
      if (bool2)
      {
        paramPaint.setColor(this.mRenderer.getGridColor(0));
        paramCanvas.drawLine(f1, paramInt3, f1, paramInt2, paramPaint);
      }
    }
  }

  protected void drawXTextLabels(Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    boolean bool1 = this.mRenderer.isShowCustomTextGridX();
    boolean bool2 = this.mRenderer.isShowTickMarks();
    int i;
    if (paramBoolean)
    {
      paramPaint.setColor(this.mRenderer.getXLabelsColor());
      i = paramArrayOfDouble.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      Double localDouble = paramArrayOfDouble[j];
      if ((paramDouble2 <= localDouble.doubleValue()) && (localDouble.doubleValue() <= paramDouble3))
      {
        float f1 = (float)(paramInt1 + paramDouble1 * (localDouble.doubleValue() - paramDouble2));
        paramPaint.setColor(this.mRenderer.getXLabelsColor());
        if (bool2)
          paramCanvas.drawLine(f1, paramInt3, f1, paramInt3 + this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint);
        drawText(paramCanvas, this.mRenderer.getXTextLabel(localDouble), f1, paramInt3 + 4.0F * this.mRenderer.getLabelsTextSize() / 3.0F, paramPaint, this.mRenderer.getXLabelsAngle());
        if (bool1)
        {
          paramPaint.setColor(this.mRenderer.getGridColor(0));
          paramCanvas.drawLine(f1, paramInt3, f1, paramInt2, paramPaint);
        }
      }
    }
  }

  protected void drawYLabels(Map<Integer, List<Double>> paramMap, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    XYMultipleSeriesRenderer.Orientation localOrientation = this.mRenderer.getOrientation();
    boolean bool1 = this.mRenderer.isShowGridX();
    boolean bool2 = this.mRenderer.isShowLabels();
    boolean bool3 = this.mRenderer.isShowTickMarks();
    List localList;
    int k;
    for (int i = 0; ; i++)
    {
      if (i >= paramInt1)
        return;
      paramPaint.setTextAlign(this.mRenderer.getYLabelsAlign(i));
      localList = (List)paramMap.get(Integer.valueOf(i));
      int j = localList.size();
      k = 0;
      if (k < j)
        break;
    }
    double d1 = ((Double)localList.get(k)).doubleValue();
    Paint.Align localAlign = this.mRenderer.getYAxisAlign(i);
    int m;
    label149: float f1;
    if (this.mRenderer.getYTextLabel(Double.valueOf(d1), i) != null)
    {
      m = 1;
      f1 = (float)(paramInt4 - paramArrayOfDouble1[i] * (d1 - paramArrayOfDouble2[i]));
      if (localOrientation != XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        break label403;
      if ((bool2) && (m == 0))
      {
        paramPaint.setColor(this.mRenderer.getYLabelsColor(i));
        if (localAlign != Paint.Align.LEFT)
          break label327;
        if (bool3)
          paramCanvas.drawLine(paramInt2 + a(localAlign), f1, paramInt2, f1, paramPaint);
        drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d1), paramInt2 - this.mRenderer.getYLabelsPadding(), f1 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
      }
      label282: if (bool1)
      {
        paramPaint.setColor(this.mRenderer.getGridColor(i));
        paramCanvas.drawLine(paramInt2, f1, paramInt3, f1, paramPaint);
      }
    }
    while (true)
    {
      k++;
      break;
      m = 0;
      break label149;
      label327: if (bool3)
        paramCanvas.drawLine(paramInt3, f1, paramInt3 + a(localAlign), f1, paramPaint);
      drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d1), paramInt3 + this.mRenderer.getYLabelsPadding(), f1 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
      break label282;
      label403: if (localOrientation == XYMultipleSeriesRenderer.Orientation.VERTICAL)
      {
        if ((bool2) && (m == 0))
        {
          paramPaint.setColor(this.mRenderer.getYLabelsColor(i));
          if (bool3)
            paramCanvas.drawLine(paramInt3 - a(localAlign), f1, paramInt3, f1, paramPaint);
          drawText(paramCanvas, getLabel(this.mRenderer.getLabelFormat(), d1), paramInt3 + 10 + this.mRenderer.getYLabelsPadding(), f1 - this.mRenderer.getYLabelsVerticalPadding(), paramPaint, this.mRenderer.getYLabelsAngle());
        }
        if (bool1)
        {
          paramPaint.setColor(this.mRenderer.getGridColor(i));
          if (bool3)
            paramCanvas.drawLine(paramInt3, f1, paramInt2, f1, paramPaint);
        }
      }
    }
  }

  public double[] getCalcRange(int paramInt)
  {
    return (double[])this.e.get(Integer.valueOf(paramInt));
  }

  public abstract String getChartType();

  public Map<Integer, List<ClickableArea>> getClickableAreas()
  {
    return this.f;
  }

  public XYMultipleSeriesDataset getDataset()
  {
    return this.mDataset;
  }

  public double getDefaultMinimum()
  {
    return 1.7976931348623157E+308D;
  }

  public ScatterChart getPointsChart()
  {
    return null;
  }

  public XYMultipleSeriesRenderer getRenderer()
  {
    return this.mRenderer;
  }

  protected Rect getScreenR()
  {
    return this.d;
  }

  public SeriesSelection getSeriesAndPointForScreenCoordinate(Point paramPoint)
  {
    int i;
    if (this.f != null)
    {
      i = -1 + this.f.size();
      if (i >= 0);
    }
    else
    {
      return super.getSeriesAndPointForScreenCoordinate(paramPoint);
    }
    int j = 0;
    Iterator localIterator;
    if (this.f.get(Integer.valueOf(i)) != null)
      localIterator = ((List)this.f.get(Integer.valueOf(i))).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        i--;
        break;
      }
      ClickableArea localClickableArea = (ClickableArea)localIterator.next();
      if (localClickableArea != null)
      {
        RectF localRectF = localClickableArea.getRect();
        if ((localRectF != null) && (localRectF.contains(paramPoint.getX(), paramPoint.getY())))
          return new SeriesSelection(i, j, localClickableArea.getX(), localClickableArea.getY());
      }
      j++;
    }
  }

  protected List<Double> getXLabels(double paramDouble1, double paramDouble2, int paramInt)
  {
    return MathHelper.getLabels(paramDouble1, paramDouble2, paramInt);
  }

  protected Map<Integer, List<Double>> getYLabels(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    for (int i = 0; ; i++)
    {
      if (i >= paramInt)
        return localHashMap;
      localHashMap.put(Integer.valueOf(i), a(MathHelper.getLabels(paramArrayOfDouble1[i], paramArrayOfDouble2[i], this.mRenderer.getYLabels())));
    }
  }

  protected boolean isRenderNullValues()
  {
    return false;
  }

  public boolean isRenderPoints(SimpleSeriesRenderer paramSimpleSeriesRenderer)
  {
    return false;
  }

  public void setCalcRange(double[] paramArrayOfDouble, int paramInt)
  {
    this.e.put(Integer.valueOf(paramInt), paramArrayOfDouble);
  }

  protected void setDatasetRenderer(XYMultipleSeriesDataset paramXYMultipleSeriesDataset, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    this.mDataset = paramXYMultipleSeriesDataset;
    this.mRenderer = paramXYMultipleSeriesRenderer;
  }

  protected void setScreenR(Rect paramRect)
  {
    this.d = paramRect;
  }

  public double[] toRealPoint(float paramFloat1, float paramFloat2)
  {
    return toRealPoint(paramFloat1, paramFloat2, 0);
  }

  public double[] toRealPoint(float paramFloat1, float paramFloat2, int paramInt)
  {
    double d1 = this.mRenderer.getXAxisMin(paramInt);
    double d2 = this.mRenderer.getXAxisMax(paramInt);
    double d3 = this.mRenderer.getYAxisMin(paramInt);
    double d4 = this.mRenderer.getYAxisMax(paramInt);
    if ((!this.mRenderer.isMinXSet(paramInt)) || (!this.mRenderer.isMaxXSet(paramInt)) || (!this.mRenderer.isMinXSet(paramInt)) || (!this.mRenderer.isMaxYSet(paramInt)))
    {
      double[] arrayOfDouble1 = getCalcRange(paramInt);
      d1 = arrayOfDouble1[0];
      d2 = arrayOfDouble1[1];
      d3 = arrayOfDouble1[2];
      d4 = arrayOfDouble1[3];
    }
    if (this.d != null)
    {
      double[] arrayOfDouble3 = new double[2];
      arrayOfDouble3[0] = (d1 + (paramFloat1 - this.d.left) * (d2 - d1) / this.d.width());
      arrayOfDouble3[1] = (d3 + (this.d.top + this.d.height() - paramFloat2) * (d4 - d3) / this.d.height());
      return arrayOfDouble3;
    }
    double[] arrayOfDouble2 = new double[2];
    arrayOfDouble2[0] = paramFloat1;
    arrayOfDouble2[1] = paramFloat2;
    return arrayOfDouble2;
  }

  public double[] toScreenPoint(double[] paramArrayOfDouble)
  {
    return toScreenPoint(paramArrayOfDouble, 0);
  }

  public double[] toScreenPoint(double[] paramArrayOfDouble, int paramInt)
  {
    double d1 = this.mRenderer.getXAxisMin(paramInt);
    double d2 = this.mRenderer.getXAxisMax(paramInt);
    double d3 = this.mRenderer.getYAxisMin(paramInt);
    double d4 = this.mRenderer.getYAxisMax(paramInt);
    if ((!this.mRenderer.isMinXSet(paramInt)) || (!this.mRenderer.isMaxXSet(paramInt)) || (!this.mRenderer.isMinXSet(paramInt)) || (!this.mRenderer.isMaxYSet(paramInt)))
    {
      double[] arrayOfDouble1 = getCalcRange(paramInt);
      d1 = arrayOfDouble1[0];
      d2 = arrayOfDouble1[1];
      d3 = arrayOfDouble1[2];
      d4 = arrayOfDouble1[3];
    }
    if (this.d != null)
    {
      double[] arrayOfDouble2 = new double[2];
      arrayOfDouble2[0] = ((paramArrayOfDouble[0] - d1) * this.d.width() / (d2 - d1) + this.d.left);
      arrayOfDouble2[1] = ((d4 - paramArrayOfDouble[1]) * this.d.height() / (d4 - d3) + this.d.top);
      paramArrayOfDouble = arrayOfDouble2;
    }
    return paramArrayOfDouble;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.chart.XYChart
 * JD-Core Version:    0.6.2
 */