.class public Lorg/achartengine/renderer/SimpleSeriesRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Lorg/achartengine/renderer/BasicStroke;

.field private c:Z

.field private d:D

.field private e:I

.field private f:D

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xffff01

    iput v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->c:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->h:Z

    iput-boolean v1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->j:Z

    return-void
.end method


# virtual methods
.method public getChartValuesFormat()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->k:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->a:I

    return v0
.end method

.method public getGradientStartColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->e:I

    return v0
.end method

.method public getGradientStartValue()D
    .locals 2

    iget-wide v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->d:D

    return-wide v0
.end method

.method public getGradientStopColor()I
    .locals 1

    iget v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->g:I

    return v0
.end method

.method public getGradientStopValue()D
    .locals 2

    iget-wide v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->f:D

    return-wide v0
.end method

.method public getStroke()Lorg/achartengine/renderer/BasicStroke;
    .locals 1

    iget-object v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->b:Lorg/achartengine/renderer/BasicStroke;

    return-object v0
.end method

.method public isDisplayBoundingPoints()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->j:Z

    return v0
.end method

.method public isGradientEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->c:Z

    return v0
.end method

.method public isHighlighted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->i:Z

    return v0
.end method

.method public isShowLegendItem()Z
    .locals 1

    iget-boolean v0, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->h:Z

    return v0
.end method

.method public setChartValuesFormat(Ljava/text/NumberFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->k:Ljava/text/NumberFormat;

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->a:I

    return-void
.end method

.method public setDisplayBoundingPoints(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->j:Z

    return-void
.end method

.method public setGradientEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->c:Z

    return-void
.end method

.method public setGradientStart(DI)V
    .locals 0

    iput-wide p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->d:D

    iput p3, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->e:I

    return-void
.end method

.method public setGradientStop(DI)V
    .locals 0

    iput-wide p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->f:D

    iput p3, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->g:I

    return-void
.end method

.method public setHighlighted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->i:Z

    return-void
.end method

.method public setShowLegendItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->h:Z

    return-void
.end method

.method public setStroke(Lorg/achartengine/renderer/BasicStroke;)V
    .locals 0

    iput-object p1, p0, Lorg/achartengine/renderer/SimpleSeriesRenderer;->b:Lorg/achartengine/renderer/BasicStroke;

    return-void
.end method
