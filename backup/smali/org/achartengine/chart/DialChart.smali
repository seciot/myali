.class public Lorg/achartengine/chart/DialChart;
.super Lorg/achartengine/chart/RoundChart;


# instance fields
.field private a:Lorg/achartengine/renderer/DialRenderer;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DialRenderer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    iput-object p2, p0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    return-void
.end method

.method private static a(DDDDD)D
    .locals 6

    sub-double v0, p4, p2

    sub-double v2, p8, p6

    sub-double v4, p0, p6

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    add-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/graphics/Canvas;DDDDIIDDDLandroid/graphics/Paint;Z)V
    .locals 12

    move-wide v1, p1

    :goto_0
    cmpg-double v3, v1, p3

    if-lez v3, :cond_0

    return-void

    :cond_0
    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide v7, p1

    move-wide v9, p3

    invoke-static/range {v1 .. v10}, Lorg/achartengine/chart/DialChart;->a(DDDDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 v0, p9

    int-to-float v7, v0

    mul-double v8, p13, v5

    double-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    move/from16 v0, p10

    int-to-float v7, v0

    mul-double v10, p13, v3

    double-to-float v8, v10

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    move/from16 v0, p9

    int-to-float v7, v0

    mul-double v5, v5, p11

    double-to-float v5, v5

    add-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v11

    move/from16 v0, p10

    int-to-float v5, v0

    mul-double v3, v3, p11

    double-to-float v3, v3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v10

    int-to-float v6, v11

    int-to-float v7, v3

    move-object v3, p0

    move-object/from16 v8, p17

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz p18, :cond_3

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-gt v9, v11, :cond_1

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    double-to-long v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    double-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    int-to-float v4, v9

    int-to-float v5, v10

    move-object/from16 v0, p17

    invoke-virtual {p0, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    add-double v1, v1, p15

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->isAntialiasing()Z

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getLabelsTextSize()F

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    div-int/lit8 v4, p5, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/achartengine/chart/DialChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v12

    add-int v8, p2, p4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v3}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->isFitLegend()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v3 .. v14}, Lorg/achartengine/chart/DialChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v12

    move/from16 v28, v12

    :goto_1
    add-int v3, p3, p5

    sub-int v3, v3, v28

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    invoke-virtual/range {v9 .. v18}, Lorg/achartengine/chart/DialChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    sub-int v4, v8, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v5, v3, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v4, v4

    const-wide v9, 0x3fd6666666666666L

    mul-double/2addr v4, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/DialRenderer;->getScale()F

    move-result v7

    float-to-double v9, v7

    mul-double/2addr v4, v9

    double-to-int v7, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/DialChart;->mCenterX:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    add-int v4, p2, v8

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/DialChart;->mCenterX:I

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/DialChart;->mCenterY:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    add-int v3, v3, p3

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lorg/achartengine/chart/DialChart;->mCenterY:I

    :cond_1
    int-to-float v3, v7

    const v4, 0x3f666666

    mul-float v29, v3, v4

    int-to-float v3, v7

    const v4, 0x3f8ccccd

    mul-float v30, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getMinValue()D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getMaxValue()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getAngleMin()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getAngleMax()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->isMinValueSet()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->isMaxValueSet()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getSeriesRendererCount()I

    move-result v18

    const/4 v3, 0x0

    move v5, v3

    move-wide v3, v10

    move-wide v9, v12

    :goto_2
    move/from16 v0, v18

    if-lt v5, v0, :cond_8

    move-wide v12, v9

    move-wide v10, v3

    :cond_3
    cmpl-double v3, v10, v12

    if-nez v3, :cond_4

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v10, v3

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v12, v3

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getLabelsColor()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getMinorTicksSpacing()D

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getMajorTicksSpacing()D

    move-result-wide v3

    const-wide v18, 0x7fefffffffffffffL

    cmpl-double v5, v24, v18

    if-nez v5, :cond_5

    sub-double v18, v12, v10

    const-wide/high16 v20, 0x403e

    div-double v24, v18, v20

    :cond_5
    const-wide v18, 0x7fefffffffffffffL

    cmpl-double v5, v3, v18

    if-nez v5, :cond_6

    sub-double v3, v12, v10

    const-wide/high16 v18, 0x4024

    div-double v3, v3, v18

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/DialChart;->mCenterX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/DialChart;->mCenterY:I

    move/from16 v19, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v20, v0

    int-to-double v0, v7

    move-wide/from16 v22, v0

    const/16 v27, 0x0

    move-object/from16 v9, p1

    move-object/from16 v26, p6

    invoke-static/range {v9 .. v27}, Lorg/achartengine/chart/DialChart;->a(Landroid/graphics/Canvas;DDDDIIDDDLandroid/graphics/Paint;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/DialChart;->mCenterX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/DialChart;->mCenterY:I

    move/from16 v19, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v27, 0x1

    move-object/from16 v9, p1

    move-wide/from16 v24, v3

    move-object/from16 v26, p6

    invoke-static/range {v9 .. v27}, Lorg/achartengine/chart/DialChart;->a(Landroid/graphics/Canvas;DDDDIIDDDLandroid/graphics/Paint;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/DialRenderer;->getSeriesRendererCount()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-lt v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, v28

    move-object/from16 v13, p6

    invoke-virtual/range {v3 .. v14}, Lorg/achartengine/chart/DialChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lorg/achartengine/chart/DialChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v5, v3}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v11, v5}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v13}, Lorg/achartengine/renderer/DialRenderer;->isMinValueSet()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v13}, Lorg/achartengine/renderer/DialRenderer;->isMaxValueSet()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v3, v4}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v18

    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    invoke-static/range {v18 .. v27}, Lorg/achartengine/chart/DialChart;->a(DDDDD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/DialRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/DialChart;->a:Lorg/achartengine/renderer/DialRenderer;

    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/DialRenderer;->getVisualTypeForIndex(I)Lorg/achartengine/renderer/DialRenderer$Type;

    move-result-object v3

    sget-object v7, Lorg/achartengine/renderer/DialRenderer$Type;->ARROW:Lorg/achartengine/renderer/DialRenderer$Type;

    if-ne v3, v7, :cond_c

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v7, v0, Lorg/achartengine/chart/DialChart;->mCenterX:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/achartengine/chart/DialChart;->mCenterY:I

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4056800000000000L

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4024

    sub-double v26, v18, v22

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const-wide/high16 v25, 0x4024

    sub-double v22, v18, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v25

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v25, v25, v20

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v25, v25, v20

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v23, v23, v7

    add-int v25, v25, v9

    if-eqz v3, :cond_d

    const-wide v26, 0x3feb333333333333L

    mul-double v26, v26, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v26, v26, v30

    move-wide/from16 v0, v26

    double-to-int v3, v0

    add-int v26, v7, v3

    const-wide v30, 0x3feb333333333333L

    mul-double v20, v20, v30

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v3, v0

    add-int v18, v9, v3

    const/4 v3, 0x6

    new-array v3, v3, [F

    const/16 v19, 0x0

    sub-int v20, v26, v24

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v3, v19

    const/16 v19, 0x1

    sub-int v20, v18, v22

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v3, v19

    const/16 v19, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v3, v19

    const/16 v19, 0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v3, v19

    const/16 v19, 0x4

    add-int v20, v26, v24

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v3, v19

    const/16 v19, 0x5

    add-int v18, v18, v22

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v3, v19

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v24

    const/high16 v18, 0x40a0

    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v0, v7

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v18, p1

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_5
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v3, v2, v7}, Lorg/achartengine/chart/DialChart;->drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x6

    new-array v3, v3, [F

    const/16 v18, 0x0

    sub-int v19, v7, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v3, v18

    const/16 v18, 0x1

    sub-int v19, v9, v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v3, v18

    const/16 v18, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v3, v18

    const/16 v18, 0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v3, v18

    const/16 v18, 0x4

    add-int v7, v7, v24

    int-to-float v7, v7

    aput v7, v3, v18

    const/4 v7, 0x5

    add-int v9, v9, v22

    int-to-float v9, v9

    aput v9, v3, v7

    goto :goto_5

    :cond_e
    move/from16 v28, v12

    goto/16 :goto_1
.end method
