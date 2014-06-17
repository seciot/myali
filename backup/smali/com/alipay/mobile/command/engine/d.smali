.class final Lcom/alipay/mobile/command/engine/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/TaskExeService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/d;->a:Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "start listenerManager loop"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/command/manager/ListenerManager;->loop()V

    return-void
.end method
