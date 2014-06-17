.class public Lcom/aps/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/aps/d;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/d$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/d;->a:Lcom/aps/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/d;->c:J

    return-void
.end method

.method private static a([D[D)D
    .locals 11

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move-wide v3, v1

    move-wide v5, v1

    :goto_0
    array-length v7, p0

    if-ge v0, v7, :cond_0

    aget-wide v7, p0, v0

    aget-wide v9, p0, v0

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    aget-wide v7, p1, v0

    aget-wide v9, p1, v0

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    aget-wide v7, p0, v0

    aget-wide v9, p1, v0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    div-double v0, v5, v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/aps/d$a;
    .locals 19

    const/4 v2, 0x0

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v3, "mem"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const/4 v10, 0x1

    move v4, v10

    move-object v11, v2

    :goto_1
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    move-object/from16 v8, p1

    move-object v9, v1

    move v10, v2

    :goto_2
    if-nez v11, :cond_e

    if-eqz v9, :cond_f

    const/4 v1, 0x0

    move v7, v1

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_d

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/aps/d$a;

    invoke-virtual {v2}, Lcom/aps/d$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    invoke-virtual {v2}, Lcom/aps/d$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ",access"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/16 v5, 0x11

    if-ge v4, v5, :cond_3

    :cond_0
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/aps/d$a;->a()Lcom/aps/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aps/c;->c()F

    move-result v1

    const/high16 v4, 0x4448

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_5

    move v4, v10

    move-object v11, v2

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "db"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-object v3, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v8, v2

    move-object v9, v1

    move v10, v4

    goto :goto_2

    :cond_3
    const-string/jumbo v5, ",access"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v4, -0x11

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ",access"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lcom/aps/d$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v14}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v14, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    invoke-virtual {v13}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v14, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    invoke-virtual {v14}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [D

    move-object/from16 v16, v0

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [D

    move-object/from16 v17, v0

    const/4 v1, 0x0

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v4, v1

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-wide/high16 v5, 0x3ff0

    :goto_8
    aput-wide v5, v16, v4

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/high16 v5, 0x3ff0

    :goto_9
    aput-wide v5, v17, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7

    :cond_8
    const-wide/16 v5, 0x0

    goto :goto_8

    :cond_9
    const-wide/16 v5, 0x0

    goto :goto_9

    :cond_a
    invoke-interface {v15}, Ljava/util/Set;->clear()V

    invoke-static/range {v16 .. v17}, Lcom/aps/d;->a([D[D)D

    move-result-wide v4

    const-string/jumbo v1, "mem"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-wide v15, 0x3feb333340000000L

    cmpl-double v1, v4, v15

    if-lez v1, :cond_c

    move v4, v10

    move-object v11, v2

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v1, "db"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-wide v15, 0x3feb333340000000L

    cmpl-double v1, v4, v15

    if-lez v1, :cond_c

    move v4, v10

    move-object v11, v2

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_3

    :cond_d
    move v4, v10

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v12}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v14}, Ljava/util/Hashtable;->clear()V

    return-object v11

    :cond_f
    move v4, v10

    goto/16 :goto_1
.end method

.method static declared-synchronized a()Lcom/aps/d;
    .locals 2

    const-class v1, Lcom/aps/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/d;->a:Lcom/aps/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/d;

    invoke-direct {v0}, Lcom/aps/d;-><init>()V

    sput-object v0, Lcom/aps/d;->a:Lcom/aps/d;

    :cond_0
    sget-object v0, Lcom/aps/d;->a:Lcom/aps/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/aps/f;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aps/d;->c()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aps/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aps/d;->c()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "#cellwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    const-string/jumbo v0, "#cellwifi"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/aps/d$a;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aps/d$a;->a()Lcom/aps/c;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "#wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "#wifi"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/aps/d$a;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "#cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_7

    const-string/jumbo v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/d$a;

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "db"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/aps/f;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aps/d;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/aps/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aps/d;->c()V

    :cond_2
    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/d;->c:J

    new-instance v1, Lcom/aps/d$a;

    invoke-direct {v1, p0}, Lcom/aps/d$a;-><init>(Lcom/aps/d;)V

    const-string/jumbo v0, "mem"

    invoke-virtual {p2, v0}, Lcom/aps/c;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/aps/d$a;->a(Lcom/aps/c;)V

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aps/d$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/aps/c;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    const-string/jumbo v2, "#network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Lcom/aps/c;->a()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method b()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/aps/n;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/d;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/aps/d;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    const/16 v5, 0x168

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/d;->c:J

    iget-object v0, p0, Lcom/aps/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method
