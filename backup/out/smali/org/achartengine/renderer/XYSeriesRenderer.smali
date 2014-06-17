.class public Lorg/achartengine/renderer/XYSeriesRenderer;
.super Lorg/achartengine/renderer/SimpleSeriesRenderer;


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/achartengine/chart/PointStyle;

.field private d:F

.field private e:F

.field private f:Z

.field private g:I

.field private h:F

.field private i:Landroid/graphics/Paint$Align;

.field private j:F

.field private k:F

.field private l:Landroid/graphics/Paint$Align;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x4120

    const/high16 v1, 0x3f80

    invoke-direct {p0}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    sget-object v0, Lorg/achartengine/chart/PointStyle;->POINT:Lorg/achartengine/chart/PointStyle;

    iput-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->c:Lorg/achartengine/chart/PointStyle;

    iput v1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->d:F

    iput v1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->e:F

    const/16 v0, 0x64

    iput v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->g:I

    iput v2, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->h:F

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->i:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x40a0

    iput v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->j:F

    iput v2, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->k:F

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->l:Landroid/graphics/Paint$Align;

    const v0, -0x333334

    iput v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->m:I

    return-void
.end method


# virtual methods
.method public addFillOutsideLine(Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;)V
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAnnotationsColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->m:I

    return v0
.end method

.method public getAnnotationsTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->l:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getAnnotationsTextSize()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->k:F

    return v0
.end method

.method public getChartValuesSpacing()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->j:F

    return v0
.end method

.method public getChartValuesTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->i:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getChartValuesTextSize()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->h:F

    return v0
.end method

.method public getDisplayChartValuesDistance()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->g:I

    return v0
.end method

.method public getFillOutsideLine()[Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;
    .locals 2

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->e:F

    return v0
.end method

.method public getPointStrokeWidth()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->d:F

    return v0
.end method

.method public getPointStyle()Lorg/achartengine/chart/PointStyle;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->c:Lorg/achartengine/chart/PointStyle;

    return-object v0
.end method

.method public isDisplayChartValues()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->f:Z

    return v0
.end method

.method public isFillBelowLine()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFillPoints()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->a:Z

    return v0
.end method

.method public setAnnotationsColor(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->m:I

    return-void
.end method

.method public setAnnotationsTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->l:Landroid/graphics/Paint$Align;

    return-void
.end method

.method public setAnnotationsTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->k:F

    return-void
.end method

.method public setChartValuesSpacing(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->j:F

    return-void
.end method

.method public setChartValuesTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->i:Landroid/graphics/Paint$Align;

    return-void
.end method

.method public setChartValuesTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->h:F

    return-void
.end method

.method public setDisplayChartValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->f:Z

    return-void
.end method

.method public setDisplayChartValuesDistance(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->g:I

    return-void
.end method

.method public setFillBelowLine(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    new-instance v1, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;

    sget-object v2, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ALL:Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-direct {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;-><init>(Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    new-instance v1, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;

    sget-object v2, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type;->NONE:Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-direct {v1, v2}, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;-><init>(Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFillBelowLineColor(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;

    invoke-virtual {v0, p1}, Lorg/achartengine/renderer/XYSeriesRenderer$FillOutsideLine;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setFillPoints(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->a:Z

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->e:F

    return-void
.end method

.method public setPointStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->d:F

    return-void
.end method

.method public setPointStyle(Lorg/achartengine/chart/PointStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/XYSeriesRenderer;->c:Lorg/achartengine/chart/PointStyle;

    return-void
.end method
