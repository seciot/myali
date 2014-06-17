.class public Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0

    :cond_1
    new-instance v4, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

    invoke-direct {v4}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;-><init>()V

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    const/4 v5, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    instance-of v5, v5, Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_4

    const v3, 0x2507006b

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_5

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_6

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->actionId:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v0, v4, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->behavID:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->time:J

    iget-object v0, v4, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->draw_times:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sput-object v4, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionCtx:Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

    sget-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_START:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;Ljava/lang/String;)V

    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/ListenerInvocationHandler;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    const v3, 0x2507006b

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method
