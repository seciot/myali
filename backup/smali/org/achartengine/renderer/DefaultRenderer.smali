.class public Lorg/achartengine/renderer/DefaultRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1000000

.field public static final NO_COLOR:I = 0x0

.field public static final TEXT_COLOR:I = -0x333334

.field private static final c:Landroid/graphics/Typeface;


# instance fields
.field private A:F

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:F

.field private F:Z

.field private G:F

.field private H:Z

.field private I:I

.field private J:Z

.field private K:Z

.field private L:F

.field private a:Ljava/lang/String;

.field private b:F

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/graphics/Typeface;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:Z

.field private q:F

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:I

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/achartengine/renderer/DefaultRenderer;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v3, -0x333334

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->a:Ljava/lang/String;

    const/high16 v0, 0x4170

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->b:F

    sget-object v0, Lorg/achartengine/renderer/DefaultRenderer;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->d:Ljava/lang/String;

    iput v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->e:I

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->i:Z

    iput v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->j:I

    iput v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->k:I

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->l:Z

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->m:Z

    iput v3, p0, Lorg/achartengine/renderer/DefaultRenderer;->n:I

    const/high16 v0, 0x4120

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->o:F

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->p:Z

    const/high16 v0, 0x4140

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->q:F

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->r:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->s:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->t:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->u:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->v:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->x:Z

    iput v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->y:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->z:[I

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->A:F

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->B:Z

    iput-boolean v2, p0, Lorg/achartengine/renderer/DefaultRenderer;->C:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->D:Z

    const/high16 v0, 0x3fc0

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->E:F

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->F:Z

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->A:F

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->G:F

    iput-boolean v1, p0, Lorg/achartengine/renderer/DefaultRenderer;->H:Z

    const/16 v0, 0xf

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->I:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->L:F

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public addSeriesRenderer(ILorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAxesColor()I
    .locals 2

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->k:I

    const v1, -0x333334

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->k:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->j:I

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->g:I

    return v0
.end method

.method public getChartTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getChartTitleTextSize()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->b:F

    return v0
.end method

.method public getLabelsColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->n:I

    return v0
.end method

.method public getLabelsTextSize()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->o:F

    return v0
.end method

.method public getLegendHeight()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->y:I

    return v0
.end method

.method public getLegendTextSize()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->q:F

    return v0
.end method

.method public getMargins()[I
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->z:[I

    return-object v0
.end method

.method public getOriginalScale()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->G:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->A:F

    return v0
.end method

.method public getSelectableBuffer()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->I:I

    return v0
.end method

.method public getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getSeriesRendererCount()I
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSeriesRenderers()[Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .locals 2

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/achartengine/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->L:F

    return v0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTextTypefaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypefaceStyle()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->e:I

    return v0
.end method

.method public getXAxisColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->k:I

    return v0
.end method

.method public getYAxisColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->j:I

    return v0
.end method

.method public getZoomRate()F
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->E:F

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->x:Z

    return v0
.end method

.method public isApplyBackgroundColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->h:Z

    return v0
.end method

.method public isClickEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->H:Z

    return v0
.end method

.method public isDisplayValues()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->J:Z

    return v0
.end method

.method public isExternalZoomEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->F:Z

    return v0
.end method

.method public isFitLegend()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->r:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->K:Z

    return v0
.end method

.method public isPanEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->B:Z

    return v0
.end method

.method public isShowAxes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->i:Z

    return v0
.end method

.method public isShowCustomTextGridX()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->u:Z

    return v0
.end method

.method public isShowCustomTextGridY()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->v:Z

    return v0
.end method

.method public isShowGridX()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->s:Z

    return v0
.end method

.method public isShowGridY()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->t:Z

    return v0
.end method

.method public isShowLabels()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->l:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->p:Z

    return v0
.end method

.method public isShowTickMarks()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->m:Z

    return v0
.end method

.method public isZoomButtonsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->D:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->C:Z

    return v0
.end method

.method public removeAllRenderers()V
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/DefaultRenderer;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAntialiasing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->x:Z

    return-void
.end method

.method public setApplyBackgroundColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->h:Z

    return-void
.end method

.method public setAxesColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setXAxisColor(I)V

    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setYAxisColor(I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->g:I

    return-void
.end method

.method public setChartTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->a:Ljava/lang/String;

    return-void
.end method

.method public setChartTitleTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->b:F

    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->H:Z

    return-void
.end method

.method public setDisplayValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->J:Z

    return-void
.end method

.method public setExternalZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->F:Z

    return-void
.end method

.method public setFitLegend(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->r:Z

    return-void
.end method

.method public setInScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->K:Z

    return-void
.end method

.method public setLabelsColor(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->n:I

    return-void
.end method

.method public setLabelsTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->o:F

    return-void
.end method

.method public setLegendHeight(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->y:I

    return-void
.end method

.method public setLegendTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->q:F

    return-void
.end method

.method public setMargins([I)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->z:[I

    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->B:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->A:F

    return-void
.end method

.method public setSelectableBuffer(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->I:I

    return-void
.end method

.method public setShowAxes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->i:Z

    return-void
.end method

.method public setShowCustomTextGrid(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowCustomTextGridX(Z)V

    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowCustomTextGridY(Z)V

    return-void
.end method

.method public setShowCustomTextGridX(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->u:Z

    return-void
.end method

.method public setShowCustomTextGridY(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->v:Z

    return-void
.end method

.method public setShowGrid(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowGridX(Z)V

    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowGridY(Z)V

    return-void
.end method

.method public setShowGridX(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->s:Z

    return-void
.end method

.method public setShowGridY(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->t:Z

    return-void
.end method

.method public setShowLabels(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->l:Z

    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->p:Z

    return-void
.end method

.method public setShowTickMarks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->m:Z

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->L:F

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->f:Landroid/graphics/Typeface;

    return-void
.end method

.method public setTextTypeface(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->d:Ljava/lang/String;

    iput p2, p0, Lorg/achartengine/renderer/DefaultRenderer;->e:I

    return-void
.end method

.method public setXAxisColor(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->k:I

    return-void
.end method

.method public setYAxisColor(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->j:I

    return-void
.end method

.method public setZoomButtonsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->D:Z

    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->C:Z

    return-void
.end method

.method public setZoomRate(F)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/DefaultRenderer;->E:F

    return-void
.end method
