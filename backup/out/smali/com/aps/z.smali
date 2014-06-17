.class public Lcom/aps/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/aps/z;->b:I

    iput v0, p0, Lcom/aps/z;->c:I

    iput v0, p0, Lcom/aps/z;->d:I

    iput-object p1, p0, Lcom/aps/z;->a:Landroid/content/Context;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/aps/z;->a(I)V

    return-void
.end method

.method private static a(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method protected static a(Landroid/location/Location;Lcom/aps/ac;I)Lcom/aps/u;
    .locals 17

    if-lez p2, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p2

    if-gt v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    :cond_2
    const/4 v1, 0x1

    move v9, v1

    :goto_1
    const/4 v1, 0x2

    move/from16 v0, p2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_6

    :cond_3
    const/4 v1, 0x1

    move v2, v1

    :goto_2
    new-instance v8, Lcom/aps/u;

    invoke-direct {v8}, Lcom/aps/u;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/aps/u;->d:[B

    const/4 v5, 0x0

    array-length v6, v1

    iget-object v7, v8, Lcom/aps/u;->d:[B

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/aps/z;->a(II)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/aps/u;->h:[B

    const/4 v5, 0x0

    array-length v6, v1

    iget-object v7, v8, Lcom/aps/u;->h:[B

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/aps/z;->a(II)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/aps/u;->b:[B

    const/4 v5, 0x0

    array-length v6, v1

    iget-object v7, v8, Lcom/aps/u;->b:[B

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/aps/z;->a(II)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/aps/u;->c:[B

    const/4 v5, 0x0

    array-length v6, v1

    iget-object v7, v8, Lcom/aps/u;->c:[B

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/aps/z;->a(II)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->o()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v8, Lcom/aps/u;->e:S

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->p()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v8, Lcom/aps/u;->f:S

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->q()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v8, Lcom/aps/u;->g:B

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/aps/u;->i:[B

    const/4 v5, 0x0

    array-length v6, v1

    iget-object v7, v8, Lcom/aps/u;->i:[B

    array-length v7, v7

    invoke-static {v6, v7}, Lcom/aps/z;->a(II)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->m()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    if-eqz p0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_b

    new-instance v12, Lcom/aps/r;

    invoke-direct {v12}, Lcom/aps/r;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_8

    long-to-int v1, v3

    iput v1, v12, Lcom/aps/r;->b:I

    :goto_4
    new-instance v7, Lcom/aps/t;

    invoke-direct {v7}, Lcom/aps/t;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const-wide v13, 0x412e848000000000L

    mul-double/2addr v5, v13

    double-to-int v1, v5

    iput v1, v7, Lcom/aps/t;->a:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v13, 0x412e848000000000L

    mul-double/2addr v5, v13

    double-to-int v1, v5

    iput v1, v7, Lcom/aps/t;->b:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    double-to-int v1, v5

    iput v1, v7, Lcom/aps/t;->c:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    iput v1, v7, Lcom/aps/t;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-int v1, v1

    iput v1, v7, Lcom/aps/t;->e:I

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    iput-short v1, v7, Lcom/aps/t;->f:S

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->s()B

    move-result v1

    iput-byte v1, v7, Lcom/aps/t;->g:B

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->t()I

    move-result v1

    iput v1, v7, Lcom/aps/t;->h:I

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->u()S

    move-result v1

    iput-short v1, v7, Lcom/aps/t;->i:S

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->v()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v7, Lcom/aps/t;->j:B

    const/16 v5, 0x23

    const/4 v1, 0x0

    move v6, v5

    move v5, v1

    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    new-instance v14, Lcom/aps/ay;

    invoke-direct {v14}, Lcom/aps/ay;-><init>()V

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, v14, Lcom/aps/ay;->a:B

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v15, 0x1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, v14, Lcom/aps/ay;->b:S

    add-int/lit8 v6, v6, 0x3

    iget-object v1, v7, Lcom/aps/t;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_8
    long-to-int v1, v10

    iput v1, v12, Lcom/aps/r;->b:I

    goto/16 :goto_4

    :cond_9
    iput-object v7, v12, Lcom/aps/r;->c:Lcom/aps/t;

    int-to-short v1, v6

    iput-short v1, v12, Lcom/aps/r;->a:S

    iget-short v1, v12, Lcom/aps/r;->a:S

    add-int/lit8 v7, v1, 0x65

    const/4 v1, 0x1

    iget-object v5, v8, Lcom/aps/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->b()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->h()Z

    move-result v5

    if-nez v5, :cond_16

    if-eqz v9, :cond_16

    new-instance v12, Lcom/aps/r;

    invoke-direct {v12}, Lcom/aps/r;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_c

    long-to-int v1, v3

    iput v1, v12, Lcom/aps/r;->b:I

    :goto_6
    new-instance v13, Lcom/aps/q;

    invoke-direct {v13}, Lcom/aps/q;-><init>()V

    const/4 v1, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->w()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v14, 0x2

    if-lt v6, v14, :cond_a

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v13, Lcom/aps/q;->a:S

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v13, Lcom/aps/q;->b:I

    const/16 v1, 0xb

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->k()B

    move-result v5

    iput-byte v5, v13, Lcom/aps/q;->c:B

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->l()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v13, Lcom/aps/q;->d:B

    add-int/lit8 v5, v1, 0x2

    const/4 v1, 0x0

    move v6, v5

    move v5, v1

    :goto_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_d

    new-instance v15, Lcom/aps/ab;

    invoke-direct {v15}, Lcom/aps/ab;-><init>()V

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v15, Lcom/aps/ab;->a:S

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v15, Lcom/aps/ab;->b:I

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v15, Lcom/aps/ab;->c:B

    add-int/lit8 v6, v6, 0x7

    iget-object v1, v13, Lcom/aps/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    long-to-int v1, v10

    iput v1, v12, Lcom/aps/r;->b:I

    goto/16 :goto_6

    :cond_d
    iput-object v13, v12, Lcom/aps/r;->d:Lcom/aps/q;

    int-to-short v1, v6

    iput-short v1, v12, Lcom/aps/r;->a:S

    iget-short v1, v12, Lcom/aps/r;->a:S

    add-int v5, v7, v1

    const/4 v1, 0x2

    iget-object v6, v8, Lcom/aps/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v1

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v9, :cond_f

    new-instance v7, Lcom/aps/r;

    invoke-direct {v7}, Lcom/aps/r;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_11

    long-to-int v1, v3

    iput v1, v7, Lcom/aps/r;->b:I

    :goto_9
    new-instance v9, Lcom/aps/aa;

    invoke-direct {v9}, Lcom/aps/aa;-><init>()V

    const/4 v1, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->x()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_e

    const/4 v1, 0x3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/aps/aa;->a:I

    const/4 v1, 0x4

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/aps/aa;->b:I

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v9, Lcom/aps/aa;->c:S

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v9, Lcom/aps/aa;->d:S

    const/4 v1, 0x2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/aps/aa;->e:I

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->k()B

    move-result v1

    iput-byte v1, v9, Lcom/aps/aa;->f:B

    const/16 v1, 0x16

    :cond_e
    iput-object v9, v7, Lcom/aps/r;->e:Lcom/aps/aa;

    int-to-short v1, v1

    iput-short v1, v7, Lcom/aps/r;->a:S

    iget-short v1, v7, Lcom/aps/r;->a:S

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    iget-object v1, v8, Lcom/aps/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->c()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    new-instance v7, Lcom/aps/r;

    invoke-direct {v7}, Lcom/aps/r;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_12

    long-to-int v1, v3

    iput v1, v7, Lcom/aps/r;->b:I

    :goto_a
    new-instance v9, Lcom/aps/w;

    invoke-direct {v9}, Lcom/aps/w;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/aps/ac;->y()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v9, Lcom/aps/w;->a:B

    const/4 v2, 0x6

    const/4 v1, 0x0

    move v3, v1

    move v4, v2

    :goto_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_13

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x3

    if-lt v2, v11, :cond_10

    new-instance v11, Lcom/aps/x;

    invoke-direct {v11}, Lcom/aps/x;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v12, 0x0

    iget-object v13, v11, Lcom/aps/x;->a:[B

    const/4 v14, 0x0

    array-length v15, v2

    iget-object v0, v11, Lcom/aps/x;->a:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/aps/z;->a(II)I

    move-result v15

    invoke-static {v2, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v11, Lcom/aps/x;->b:S

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v12, v11, Lcom/aps/x;->c:[B

    const/4 v13, 0x0

    array-length v14, v1

    iget-object v15, v11, Lcom/aps/x;->c:[B

    array-length v15, v15

    invoke-static {v14, v15}, Lcom/aps/z;->a(II)I

    move-result v14

    invoke-static {v1, v2, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x32

    iget-object v1, v9, Lcom/aps/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move v2, v4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v2

    goto :goto_b

    :cond_11
    long-to-int v1, v10

    iput v1, v7, Lcom/aps/r;->b:I

    goto/16 :goto_9

    :cond_12
    long-to-int v1, v10

    iput v1, v7, Lcom/aps/r;->b:I

    goto/16 :goto_a

    :cond_13
    iput-object v9, v7, Lcom/aps/r;->f:Lcom/aps/w;

    int-to-short v1, v4

    iput-short v1, v7, Lcom/aps/r;->a:S

    iget-short v1, v7, Lcom/aps/r;->a:S

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    iget-object v1, v8, Lcom/aps/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    int-to-short v1, v5

    iput-short v1, v8, Lcom/aps/u;->j:S

    int-to-short v1, v6

    iput-short v1, v8, Lcom/aps/u;->a:S

    const/4 v1, 0x2

    if-ge v5, v1, :cond_15

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_15
    move-object v1, v8

    goto/16 :goto_0

    :cond_16
    move v5, v1

    move v6, v7

    goto/16 :goto_8
.end method

.method protected static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/util/BitSet;)[B
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    div-int/lit8 v4, v0, 0x8

    rem-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v5, v2, 0x7

    aget-byte v6, v3, v4

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    shl-int/2addr v2, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method protected static a([B)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected static a([BI)[B
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x1

    if-lez v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    if-le v0, p1, :cond_2

    :goto_1
    new-array v0, p1, [B

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, -0x1

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v1, 0x1

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_1
.end method

.method private b(J)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/aps/z;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/aps/z;->c:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/aps/z;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/aps/z;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "carrierdata"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v6, v1

    move-object v1, v2

    move v2, v6

    :goto_1
    if-eqz v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v6, v1

    move-object v1, v2

    move v2, v6

    goto :goto_1

    :cond_5
    move v2, v1

    move-object v1, v0

    goto :goto_1
.end method

.method protected static b([B)Ljava/util/BitSet;
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v7, Ljava/util/BitSet;

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    const/4 v3, 0x7

    move v5, v3

    :goto_1
    if-ltz v5, :cond_1

    add-int/lit8 v6, v2, 0x1

    aget-byte v3, p0, v0

    shl-int v8, v4, v5

    and-int/2addr v3, v8

    shr-int/2addr v3, v5

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_2
    invoke-virtual {v7, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v6

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private c(J)Ljava/io/File;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aps/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "carrierdata"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static c()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string/jumbo v1, "isExternalStorageRemovable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcom/aps/z;->b:I

    return v0
.end method

.method protected a(J)Ljava/io/File;
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_5

    move-object v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/aps/z;->b(J)Ljava/io/File;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aps/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "carrierdata"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    array-length v2, v0

    if-ne v2, v8, :cond_8

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p0, Lcom/aps/z;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    aget-object v1, v0, v7

    :cond_2
    :goto_1
    move-object v0, v1

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/aps/z;->c(J)Ljava/io/File;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/aps/z;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/aps/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/z;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "carrierdata"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v0, v2

    if-lez v0, :cond_9

    array-length v0, v2

    if-ne v0, v8, :cond_7

    aget-object v0, v2, v7

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v0, p0, Lcom/aps/z;->d:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    aget-object v0, v2, v7

    goto/16 :goto_0

    :cond_7
    array-length v0, v2

    if-lt v0, v9, :cond_9

    aget-object v0, v2, v7

    aget-object v2, v2, v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    array-length v2, v0

    if-lt v2, v9, :cond_2

    aget-object v1, v0, v7

    aget-object v0, v0, v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected a(I)V
    .locals 2

    iput p1, p0, Lcom/aps/z;->b:I

    iget v0, p0, Lcom/aps/z;->b:I

    shl-int/lit8 v0, v0, 0x3

    mul-int/lit16 v0, v0, 0x5dc

    iget v1, p0, Lcom/aps/z;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/aps/z;->c:I

    iget v0, p0, Lcom/aps/z;->b:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/aps/z;->c:I

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/aps/z;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aps/z;->b:I

    const/16 v1, 0x2220

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/aps/z;->c:I

    add-int/lit16 v0, v0, -0x1388

    iput v0, p0, Lcom/aps/z;->d:I

    goto :goto_0
.end method

.method protected b()Ljava/io/File;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    move-object v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/aps/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "carrierdata"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    array-length v0, v2

    if-lt v0, v7, :cond_1

    aget-object v0, v2, v5

    aget-object v1, v2, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    invoke-static {}, Lcom/aps/z;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/aps/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/z;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "carrierdata"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v0, v2

    if-lez v0, :cond_6

    array-length v0, v2

    if-lt v0, v7, :cond_6

    aget-object v0, v2, v5

    aget-object v2, v2, v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method
