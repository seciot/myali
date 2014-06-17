.class public Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I

.field private static mask:Landroid/graphics/Bitmap;


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->mask:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundColor:I

    .line 42
    const/high16 v0, 0x6400

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundProgressColor:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundWidth:F

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I

    .line 45
    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method protected getMask(I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x4000

    .line 62
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->mask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->mask:Landroid/graphics/Bitmap;

    .line 97
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 68
    float-to-int v0, v2

    float-to-int v1, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 69
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 75
    float-to-double v7, v2

    const-wide v9, 0x3fc3333333333333L

    mul-double/2addr v7, v9

    double-to-int v1, v7

    .line 77
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 78
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v12, v12, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v7, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v7, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    float-to-double v7, v2

    const-wide/high16 v9, 0x3fd8

    mul-double/2addr v7, v9

    double-to-float v3, v7

    .line 89
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    div-float v7, v2, v11

    sub-float/2addr v7, v3

    div-float v8, v2, v11

    sub-float/2addr v8, v3

    div-float v9, v2, v11

    add-float/2addr v9, v3

    div-float/2addr v2, v11

    add-float/2addr v2, v3

    invoke-direct {v1, v7, v8, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c

    iget v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I

    sub-int v3, p1, v3

    mul-int/lit16 v3, v3, 0x168

    iget v7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I

    div-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v0, v6

    .line 97
    goto :goto_0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->getMask(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->invalidate()V

    .line 57
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundColor:I

    .line 136
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundProgressColor:I

    .line 144
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    if-gez p1, :cond_0

    .line 106
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .parameter

    .prologue
    .line 116
    monitor-enter p0

    if-gez p1, :cond_0

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 120
    iget p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I

    .line 122
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 123
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->progress:I

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/RoundProgressBar;->roundWidth:F

    .line 152
    return-void
.end method
