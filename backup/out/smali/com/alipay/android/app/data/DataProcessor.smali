.class public Lcom/alipay/android/app/data/DataProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/DataSourceObserver;


# instance fields
.field private a:Lcom/alipay/android/app/data/BizData;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

.field private e:Lcom/alipay/android/app/data/c;

.field private f:Ljava/util/Queue;

.field private g:Lcom/alipay/android/app/data/c;

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/data/BizData;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->p:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->q:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->s:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->t:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    iput-object p1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    sget-object v0, Lcom/alipay/android/app/data/c;->a:Lcom/alipay/android/app/data/c;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;-><init>(Lcom/alipay/android/app/data/InteractionData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->d:Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/data/DataSource;->a(Lcom/alipay/android/app/data/DataSourceObserver;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    iput v2, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->a()Lcom/alipay/android/lib/plusin/protocol/FrameData;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    sget-object v4, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    move v2, v1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/DataProcessor;Ljava/lang/Exception;I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    sget-object v3, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    if-ne v1, v3, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x4

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/alipay/android/app/data/c;)Z
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    if-ne p1, v2, :cond_0

    sget-object v1, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    sget-object v1, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v2, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    if-ne p1, v2, :cond_1

    sget-object v1, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    sget-object v1, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v2, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    if-eq v2, p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v3, Lcom/alipay/android/app/data/c;->f:Lcom/alipay/android/app/data/c;

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object p1, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private l()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->a()Lcom/alipay/android/lib/plusin/protocol/FrameData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-boolean v3, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    iput-boolean v3, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/c;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    sget-object v5, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    sget-object v5, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    if-ne v0, v5, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    sget-object v5, Lcom/alipay/android/app/data/c;->f:Lcom/alipay/android/app/data/c;

    if-ne v0, v5, :cond_5

    move v4, v3

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->p()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->a()Lcom/alipay/android/app/net/Request;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->d()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/app/data/DataProcessor;->b:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/alipay/android/app/data/DataProcessor;->s:Z

    invoke-static {v6, v7, v0, v8}, Lcom/alipay/android/app/util/FrameUtils;->a(Lcom/alipay/android/app/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/app/net/Request;->d()Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->o:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/data/ValidatedFrameData;->f()V

    :try_start_0
    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->d:Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    invoke-virtual {v6, v5, v0}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;)Lcom/alipay/android/lib/plusin/protocol/FrameData;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/UnZipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_7
    :goto_2
    if-eqz v1, :cond_10

    if-eqz v1, :cond_8

    instance-of v0, v1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_8
    :pswitch_0
    move v0, v3

    :goto_3
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/net/Response;->g()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-nez v0, :cond_9

    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-eqz v2, :cond_a

    :cond_9
    move v2, v4

    :goto_4
    iput-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/net/Response;->f()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->j()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v2}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/data/DataSource;->a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string/jumbo v5, "global_functions"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_b

    move v2, v3

    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_b

    iget-object v6, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v6

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "script"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/alipay/android/app/data/DataProcessor;->s:Z

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->e()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->b()V

    goto :goto_2

    :pswitch_1
    move v0, v4

    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    :cond_b
    :goto_6
    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->n:Z

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->p()V

    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/alipay/android/app/data/DataProcessor;->t:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/net/Response;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->k:Ljava/lang/String;

    :cond_d
    if-eqz v0, :cond_e

    move v4, v3

    goto/16 :goto_0

    :cond_e
    iget-boolean v4, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    goto/16 :goto_0

    :cond_f
    move v2, v0

    goto/16 :goto_1

    :cond_10
    move v0, v2

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private m()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private p()V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    :try_start_0
    iget v2, p0, Lcom/alipay/android/app/data/DataProcessor;->i:I

    int-to-long v2, v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-wide v4, p0, Lcom/alipay/android/app/data/DataProcessor;->h:J

    sub-long/2addr v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 1

    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/ui/WindowData;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/DataProcessor;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alipay/android/app/data/DataProcessor;->c:J

    return-void
.end method

.method protected final a(Lcom/alipay/android/app/net/Request;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/app/net/Request;)V

    sget-object v0, Lcom/alipay/android/app/data/c;->a:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->n()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6001"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/data/DataProcessor;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->p()V

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/c;

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    sget-object v0, Lcom/alipay/android/app/data/d;->a:[I

    iget-object v3, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    invoke-virtual {v3}, Lcom/alipay/android/app/data/c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->l()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->m()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->n()Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/data/DataProcessor;->o()Z

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b()V

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->f()V

    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->f:Ljava/util/Queue;

    sget-object v3, Lcom/alipay/android/app/data/c;->a:Lcom/alipay/android/app/data/c;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    goto :goto_0

    :pswitch_6
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "no show first window"

    iput-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/data/DataProcessor;->m:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/data/DataProcessor;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    :goto_2
    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->n()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6002"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->o()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6001"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v2

    const-string/jumbo v3, "crash"

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/IAppConfig;->p()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6001"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/data/DataProcessor;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->g:Lcom/alipay/android/app/data/c;

    iput-object v5, p0, Lcom/alipay/android/app/data/DataProcessor;->e:Lcom/alipay/android/app/data/c;

    throw v0

    :catch_3
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/c;->a:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/c;->b:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/c;->e:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/c;->d:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/DataProcessor;->a:Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/data/c;)Z

    move-result v0

    return v0
.end method
