.class public Lcom/alipay/android/ipp/IppFacade;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/ipp/IppFacade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/ipp/IppFacade;->e:Z

    new-instance v0, Lcom/alipay/android/ipp/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/ipp/a;-><init>(Lcom/alipay/android/ipp/IppFacade;)V

    iput-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->f:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.android.IPP_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendBroadCast\uff01 For "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/android/ipp/IppFacade;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/ipp/IppFacade;->e:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/ipp/IppFacade;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/ipp/IppFacade;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->f:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/ipp/IppFacade;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/ipp/IppFacade;)V
    .locals 6

    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "doBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "com.ali.android.ipp.taobao"

    const-string/jumbo v2, "com.taobao.taobao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.ali.android.ipp.laiwang"

    const-string/jumbo v2, "com.alibaba.android.babylon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.ali.android.ipp.alipay"

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/android/ipp/IppFacade;->f:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v2, "BindFailed!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Binded:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "Failed to load the config info!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "No required service to be binded! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$8(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/ipp/IppFacade;->f:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "BindFailed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/ipp/IppFacade;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Binded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$9(Lcom/alipay/android/ipp/IppFacade;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/ipp/IppFacade;->b:Landroid/content/Context;

    new-instance v1, Lcom/alipay/android/ipp/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/ipp/b;-><init>(Lcom/alipay/android/ipp/IppFacade;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.ali.android.IPP_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public callProtected()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "callProtected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/ipp/IppFacade;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public performProtect()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "performProtect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/ipp/IppFacade;->e:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/ipp/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/ipp/c;-><init>(Lcom/alipay/android/ipp/IppFacade;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/ipp/IppFacade;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public performProtectOnlyOnce()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/alipay/android/ipp/IppFacade;->a:Ljava/lang/String;

    const-string/jumbo v1, "performProtectOnlyOnce()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/ipp/IppFacade;->e:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/ipp/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/ipp/c;-><init>(Lcom/alipay/android/ipp/IppFacade;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/ipp/IppFacade;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/ipp/IppFacade;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
