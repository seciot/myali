.class public Lcom/alipay/android/app/monitor/MonitorThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Lcom/alipay/android/app/monitor/MonitorThread;

.field private static d:Z


# instance fields
.field private a:Lcom/alipay/android/app/monitor/f;

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/monitor/MonitorThread;->d:Z

    return-void
.end method

.method public static a()Lcom/alipay/android/app/monitor/MonitorThread;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/monitor/MonitorThread;->c:Lcom/alipay/android/app/monitor/MonitorThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/monitor/MonitorThread;

    invoke-direct {v0}, Lcom/alipay/android/app/monitor/MonitorThread;-><init>()V

    sput-object v0, Lcom/alipay/android/app/monitor/MonitorThread;->c:Lcom/alipay/android/app/monitor/MonitorThread;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/monitor/MonitorThread;->c:Lcom/alipay/android/app/monitor/MonitorThread;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/monitor/c;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/monitor/MonitorThread;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/monitor/MonitorThread;->a:Lcom/alipay/android/app/monitor/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/monitor/MonitorThread;->a:Lcom/alipay/android/app/monitor/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/monitor/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/monitor/MonitorThread;->a:Lcom/alipay/android/app/monitor/f;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/monitor/f;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/alipay/android/app/monitor/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    sget-boolean v0, Lcom/alipay/android/app/monitor/MonitorThread;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Landroid/content/Context;)Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v1

    sget-object v0, Lcom/alipay/android/app/sys/NetConnectionType;->a:Lcom/alipay/android/app/sys/NetConnectionType;

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "https"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string/jumbo v0, "https"

    :goto_1
    new-instance v2, Lcom/alipay/android/app/monitor/c;

    sget-object v3, Lcom/alipay/android/app/monitor/MonitorEnum;->i:Lcom/alipay/android/app/monitor/MonitorEnum;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/NetConnectionType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "--URL:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Exit]Android--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->m:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->h:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->e:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    :cond_2
    return-void
.end method

.method public final b(JLjava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/alipay/android/app/monitor/c;

    sget-object v1, Lcom/alipay/android/app/monitor/MonitorEnum;->j:Lcom/alipay/android/app/monitor/MonitorEnum;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "uncatch crash"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/alipay/android/app/monitor/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/monitor/b;-><init>(Lcom/alipay/android/app/monitor/MonitorThread;Ljava/lang/StringBuilder;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->f:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    goto :goto_0
.end method

.method public final c(JLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->l:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->a:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->b:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/monitor/c;

    sget-object v2, Lcom/alipay/android/app/monitor/MonitorEnum;->g:Lcom/alipay/android/app/monitor/MonitorEnum;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/monitor/c;-><init>(Lcom/alipay/android/app/monitor/MonitorEnum;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Lcom/alipay/android/app/monitor/c;)V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/monitor/MonitorThread;->d:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/monitor/MonitorThread;->b:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "sampling point"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/alipay/android/app/monitor/a;->a()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/alipay/android/app/monitor/f;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/monitor/f;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/android/app/monitor/MonitorThread;->a:Lcom/alipay/android/app/monitor/f;

    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/monitor/MonitorThread;->d:Z

    return-void
.end method
