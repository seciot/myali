.class public Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/lang/Object;

.field private static c:Z

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->b:Ljava/lang/Object;

    sput-boolean v1, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->c:Z

    sput-object v2, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->d:Ljava/lang/Object;

    sput-object v2, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->e:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v7

    const/16 v0, 0x5f51

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p1, v3, v8

    aput-object p2, v3, v9

    aput-object p3, v3, v10

    const-string/jumbo v2, "commitEvent"

    sget-boolean v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->c:Z

    if-nez v0, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v10

    sget-object v5, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->d:Ljava/lang/Object;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->e:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    :cond_0
    :try_start_0
    const-string/jumbo v5, "com.taobao.statistic.TBS$Ext"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->c:Z

    if-eq v2, v6, :cond_3

    sget-object v2, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    sget-boolean v4, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->c:Z

    if-nez v4, :cond_2

    sput-object v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->d:Ljava/lang/Object;

    sput-object v1, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->e:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->c:Z

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    sget-object v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->d:Ljava/lang/Object;

    sget-object v1, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized setEnableOutPutExpInfo(Z)V
    .locals 2

    const-class v1, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
