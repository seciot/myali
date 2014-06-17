.class final Lcom/taobao/security/NetWorkReceiver$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/security/NetWorkReceiver;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/taobao/security/NetWorkReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/security/NetWorkReceiver$a;->a:Lcom/taobao/security/NetWorkReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taobao/security/NetWorkReceiver$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/taobao/security/NetWorkReceiver$a;->b:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/taobao/security/ProtocolManager;->a(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/connector/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/taobao/securityjni/connector/b;->a:I

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/taobao/securityjni/connector/b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/security/NetWorkReceiver;->a()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/taobao/security/NetWorkReceiver;->b()Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/security/NetWorkReceiver$a;->b:Landroid/content/Context;

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v1, v0}, Lcom/taobao/security/ProtocolManager;->a(Lcom/taobao/securityjni/connector/b;Landroid/content/ContextWrapper;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
