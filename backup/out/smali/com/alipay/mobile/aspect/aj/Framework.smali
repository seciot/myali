.class public Lcom/alipay/mobile/aspect/aj/Framework;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/aj/Framework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-direct {v0}, Lcom/alipay/mobile/aspect/aj/Framework;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/aj/Framework;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/alipay/mobile/aspect/aj/Framework;->a:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(La/a/b/a/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/a/b/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;
    .locals 3

    sget-object v0, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/aj/Framework;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/c;

    const-string/jumbo v1, "com_alipay_mobile_aspect_aj_Framework"

    sget-object v2, Lcom/alipay/mobile/aspect/aj/Framework;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, La/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/aj/Framework;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$perSingletonInstance:Lcom/alipay/mobile/aspect/aj/Framework;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199(La/a/b/a/a;La/a/a/a;)Ljava/lang/Object;
    .locals 12

    const/4 v1, 0x0

    invoke-interface {p2}, La/a/a/a;->d()La/a/a/e;

    move-result-object v0

    invoke-interface {v0}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "method-execution"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "FrameworkPointCut kind:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut pointCut:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut this:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_0

    array-length v3, v8

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_4

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {p1}, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(La/a/b/a/a;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(La/a/b/a/a;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_4
    aget-object v4, v8, v0

    const-string/jumbo v9, "FrameworkPointCut"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "FrameworkPointCut args:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    move-object v1, v0

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/aspect/aj/Framework;->ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(La/a/b/a/a;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_9

    invoke-interface {v0, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_8

    if-eqz v2, :cond_a

    invoke-interface {v0, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_8

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    :cond_8
    if-eqz v2, :cond_b

    invoke-interface {v0, v5, v6, v8}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-interface {v0, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    invoke-interface {v0, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_5

    :cond_b
    invoke-interface {v0, v5, v7, v8}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method synthetic ajc$pointcut$$callBaseActivityFinishPointcut$391()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callBaseActivityPointcut$196()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callBaseActivityStartActivityPointcut$28f()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callMicroApplicationContextDoStartAppPointcut$5bd()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callMicroApplicationContextExitPointcut$932()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callMicroApplicationContextFinishAppPointcut$6e2()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callMicroApplicationContextStartActivityPointcut$80f()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$callMicroApplicationContextStartAppPointcut$49a()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionBaseActivityFinishPointcut$314()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionBaseActivityPointcut$122()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionBaseActivityStartActivityPointcut$203()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionFrameworkPointcut$9b6()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionMicroApplicationContextDoStartAppPointcut$526()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionMicroApplicationContextExitPointcut$8a7()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionMicroApplicationContextFinishAppPointcut$64d()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionMicroApplicationContextStartActivityPointcut$770()V
    .locals 0

    return-void
.end method

.method synthetic ajc$pointcut$$executionMicroApplicationContextStartAppPointcut$407()V
    .locals 0

    return-void
.end method
