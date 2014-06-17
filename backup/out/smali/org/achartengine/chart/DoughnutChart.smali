.class public Lorg/achartengine/chart/DoughnutChart;
.super Lorg/achartengine/chart/RoundChart;


# instance fields
.field private a:Lorg/achartengine/model/MultipleCategorySeries;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    iput-object p1, p0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 39

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    div-int/lit8 v3, p5, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lorg/achartengine/chart/DoughnutChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v11

    add-int v7, p2, p4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v2}, Lorg/achartengine/model/MultipleCategorySeries;->getCategoriesCount()I

    move-result v32

    move/from16 v0, v32

    new-array v5, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v32

    if-lt v2, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->isFitLegend()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v2 .. v13}, Lorg/achartengine/chart/DoughnutChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v11

    move/from16 v29, v11

    :goto_1
    add-int v2, p3, p5

    sub-int v2, v2, v29

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v8 .. v17}, Lorg/achartengine/chart/DoughnutChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lorg/achartengine/chart/DoughnutChart;->b:I

    sub-int v3, v7, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v2, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v33

    const-wide v3, 0x3fd6666666666666L

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v6

    float-to-double v8, v6

    mul-double/2addr v3, v8

    const-wide v8, 0x3fc999999999999aL

    move/from16 v0, v32

    int-to-double v10, v0

    div-double v34, v8, v10

    move/from16 v0, v33

    int-to-double v8, v0

    mul-double/2addr v3, v8

    double-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_0

    add-int v4, p2, v7

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_1

    add-int v2, v2, p3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    :cond_1
    int-to-float v2, v3

    const v4, 0x3f666666

    mul-float v19, v2, v4

    int-to-float v2, v3

    const v4, 0x3f8ccccd

    mul-float v20, v2, v4

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move/from16 v30, v2

    move/from16 v31, v3

    :goto_2
    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, v29

    move-object/from16 v12, p6

    invoke-virtual/range {v2 .. v13}, Lorg/achartengine/chart/DoughnutChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lorg/achartengine/chart/DoughnutChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    invoke-virtual {v3, v2}, Lorg/achartengine/model/MultipleCategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getItemCount(I)I

    move-result v36

    const-wide/16 v2, 0x0

    move/from16 v0, v36

    new-array v8, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    move v6, v4

    move-wide/from16 v37, v2

    move-wide/from16 v3, v37

    :goto_3
    move/from16 v0, v36

    if-lt v6, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/DefaultRenderer;->getStartAngle()F

    move-result v10

    new-instance v9, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    sub-int v2, v2, v31

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    sub-int v6, v6, v31

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    add-int v8, v8, v31

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    add-int v11, v11, v31

    int-to-float v11, v11

    invoke-direct {v9, v2, v6, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    :goto_4
    move/from16 v0, v36

    if-lt v2, v0, :cond_5

    move/from16 v0, v31

    int-to-double v2, v0

    move/from16 v0, v33

    int-to-double v8, v0

    mul-double v8, v8, v34

    sub-double/2addr v2, v8

    double-to-int v2, v2

    move/from16 v0, v19

    float-to-double v3, v0

    move/from16 v0, v33

    int-to-double v8, v0

    mul-double v8, v8, v34

    const-wide/high16 v10, 0x4000

    sub-double/2addr v8, v10

    sub-double/2addr v3, v8

    double-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v9, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-direct {v9, v3, v4, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v10, 0x0

    const/high16 v11, 0x43b4

    const/4 v12, 0x1

    move-object/from16 v8, p1

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v2, v30, 0x1

    move/from16 v30, v2

    move/from16 v31, v3

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v2

    aget-wide v9, v2, v6

    add-double v2, v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v8, v6

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide/from16 v37, v2

    move-wide/from16 v3, v37

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v6, v2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getValues(I)[D

    move-result-object v6

    aget-wide v11, v6, v2

    double-to-float v6, v11

    float-to-double v11, v6

    div-double/2addr v11, v3

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-float v11, v11

    const/4 v12, 0x1

    move-object/from16 v8, p1

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->a:Lorg/achartengine/model/MultipleCategorySeries;

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lorg/achartengine/model/MultipleCategorySeries;->getTitles(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v14, v6, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/DoughnutChart;->mCenterY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/DoughnutChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v25

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, p2

    move/from16 v24, v7

    move-object/from16 v26, p6

    invoke-virtual/range {v12 .. v28}, Lorg/achartengine/chart/DoughnutChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    add-float/2addr v10, v11

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_6
    const/4 v3, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    :cond_7
    move/from16 v29, v11

    goto/16 :goto_1
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
    .locals 2

    iget v0, p0, Lorg/achartengine/chart/DoughnutChart;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/achartengine/chart/DoughnutChart;->b:I

    const/high16 v0, 0x4120

    add-float/2addr v0, p3

    iget v1, p0, Lorg/achartengine/chart/DoughnutChart;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/achartengine/chart/DoughnutChart;->b:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, p4, v1, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getLegendShapeWidth(I)I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
