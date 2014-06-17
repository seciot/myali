.class public Lorg/achartengine/util/MathHelper;
.super Ljava/lang/Object;


# static fields
.field public static final NULL_VALUE:D = 1.7976931348623157E308

.field private static final a:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/achartengine/util/MathHelper;->a:Ljava/text/NumberFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabels(DDI)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-gtz p4, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/achartengine/util/MathHelper;->a:Ljava/text/NumberFormat;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    sub-double v1, p0, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x3e7ad7f2a0000000L

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p0, v1, v2

    const/4 v2, 0x2

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v2

    :goto_1
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    sub-double/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v5, v1, v5

    div-double/2addr v2, v5

    double-to-int v2, v2

    add-int/lit8 v6, v2, 0x1

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-lt v5, v6, :cond_6

    move-object v1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpl-double v2, p0, p2

    if-lez v2, :cond_7

    const/4 v1, 0x1

    :goto_3
    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move/from16 v0, p4

    int-to-double v5, v0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    const-wide/high16 v6, 0x4024

    neg-int v8, v5

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x4014

    cmpl-double v6, v2, v6

    if-lez v6, :cond_3

    const-wide/high16 v2, 0x4024

    :cond_2
    :goto_4
    const-wide/high16 v6, 0x4024

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v2, v5

    div-double v5, p2, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    mul-double/2addr v5, v2

    div-double v7, p0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    mul-double/2addr v7, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v9, 0x0

    aput-wide v7, v1, v9

    const/4 v7, 0x1

    aput-wide v5, v1, v7

    const/4 v5, 0x2

    const-wide/high16 v6, -0x4010

    mul-double/2addr v2, v6

    aput-wide v2, v1, v5

    goto :goto_1

    :cond_3
    const-wide/high16 v6, 0x4000

    cmpl-double v6, v2, v6

    if-lez v6, :cond_4

    const-wide/high16 v2, 0x4014

    goto :goto_4

    :cond_4
    const-wide/high16 v6, 0x3ff0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    const-wide/high16 v2, 0x4000

    goto :goto_4

    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v9, 0x0

    aput-wide v5, v1, v9

    const/4 v5, 0x1

    aput-wide v7, v1, v5

    const/4 v5, 0x2

    aput-wide v2, v1, v5

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    int-to-double v7, v5

    const/4 v9, 0x2

    aget-wide v9, v1, v9

    mul-double/2addr v7, v9

    add-double/2addr v2, v7

    :try_start_0
    sget-object v7, Lorg/achartengine/util/MathHelper;->a:Ljava/text/NumberFormat;

    sget-object v8, Lorg/achartengine/util/MathHelper;->a:Ljava/text/NumberFormat;

    invoke-virtual {v8, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_2

    :catch_0
    move-exception v7

    goto :goto_5

    :cond_7
    move-wide v11, p2

    move-wide p2, p0

    move-wide p0, v11

    goto/16 :goto_3
.end method

.method public static minmax(Ljava/util/List;)[D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v10, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v11, [D

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move-wide v3, v0

    move-wide v5, v0

    move v1, v2

    :goto_1
    if-lt v1, v7, :cond_1

    new-array v0, v11, [D

    aput-wide v5, v0, v10

    aput-wide v3, v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
