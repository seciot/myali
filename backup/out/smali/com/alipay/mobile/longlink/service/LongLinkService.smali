.class public Lcom/alipay/mobile/longlink/service/LongLinkService;
.super Landroid/app/Service;


# static fields
.field public static a:Lcom/alipay/mobile/longlink/service/a;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/alipay/mobile/longlink/service/o;

.field private e:Lcom/alipay/mobile/longlink/service/p;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/longlink/service/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/service/o;-><init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->d:Lcom/alipay/mobile/longlink/service/o;

    new-instance v0, Lcom/alipay/mobile/longlink/service/p;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/service/p;-><init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->e:Lcom/alipay/mobile/longlink/service/p;

    new-instance v0, Lcom/alipay/mobile/longlink/service/j;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/service/j;-><init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static d()Lcom/alipay/mobile/longlink/service/a;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final b()Lcom/alipay/mobile/longlink/service/o;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->d:Lcom/alipay/mobile/longlink/service/o;

    return-object v0
.end method

.method public final c()Lcom/alipay/mobile/longlink/service/p;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->e:Lcom/alipay/mobile/longlink/service/p;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onBind()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/longlink/service/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/longlink/service/n;-><init>(Lcom/alipay/mobile/longlink/service/LongLinkService;Lcom/alipay/mobile/longlink/service/m;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onCreate()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/longlink/service/l;->b()Lcom/alipay/mobile/longlink/service/l;

    new-instance v0, Lcom/alipay/mobile/longlink/service/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/longlink/service/a;-><init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V

    sput-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/longlink/service/LongLinkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/longlink/service/q;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onDestroy()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/longlink/service/LongLinkService;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/longlink/service/LongLinkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->f:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onDestroy() executorService will be shutdown!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/LongLinkService;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onRebind()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStartCommand Received start id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/longlink/service/LongLinkService;->b:Ljava/lang/String;

    const-string/jumbo v2, "onUnbind()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
