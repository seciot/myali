.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final synthetic d:La/a/a/b;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, La/a/b/b/b;

    const-string/jumbo v1, "MicroApplicationContextImpl.java"

    const-class v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;

    invoke-direct {v0, v1, v2}, La/a/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "doStartApp"

    const-string/jumbo v3, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    const-string/jumbo v4, "java.lang.String:java.lang.String:android.os.Bundle"

    const-string/jumbo v5, "sourceAppId:targetAppId:params"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x1b4

    invoke-virtual {v0, v8, v1, v2}, La/a/b/b/b;->a(Ljava/lang/String;La/a/a/e;I)La/a/a/b;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->d:La/a/a/b;

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iget-object v6, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->c:Landroid/os/Bundle;

    sget-object v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->d:La/a/a/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    invoke-static {v0, p0, v5, v1}, La/a/b/b/b;->a(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/aj/Framework;->aspectOf()Lcom/alipay/mobile/aspect/aj/Framework;

    invoke-interface {v0}, La/a/a/a;->d()La/a/a/e;

    move-result-object v1

    invoke-interface {v1}, La/a/a/e;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, La/a/a/a;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0}, La/a/a/a;->b()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0}, La/a/a/a;->c()[Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0}, La/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "method-execution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FrameworkPointCut kind:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FrameworkPointCut pointCut:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FrameworkPointCut"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FrameworkPointCut this:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_0

    array-length v1, v12

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_6

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v0

    :cond_1
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v0, "method-call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    aget-object v3, v12, v0

    const-string/jumbo v4, "FrameworkPointCut"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "FrameworkPointCut args:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aspect/Advice;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_8

    invoke-interface {v1, v9, v10, v12}, Lcom/alipay/mobile/aspect/Advice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_9

    invoke-interface {v1, v9, v10, v12}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move v0, v3

    :goto_6
    if-eqz v2, :cond_a

    invoke-interface {v1, v9, v10, v12}, Lcom/alipay/mobile/aspect/Advice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_8
    invoke-interface {v1, v9, v11, v12}, Lcom/alipay/mobile/aspect/Advice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface {v1, v9, v11, v12}, Lcom/alipay/mobile/aspect/Advice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_a
    invoke-interface {v1, v9, v11, v12}, Lcom/alipay/mobile/aspect/Advice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_6
.end method
