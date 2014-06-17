.class public final Lcom/alipay/pushsdk/AliPushInterface;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.NOTIFICATION_CLICKED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "k"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ext"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x3

    const-string/jumbo v1, "AliPushInterface"

    const-string/jumbo v2, "activeReport() startService!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkDevice(Landroid/content/Context;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Device must be at least API Level 5 (instead of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static delUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static getPushState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "true"

    new-instance v1, Lcom/alipay/pushsdk/push/o;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "false"

    :cond_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "0"

    invoke-static {p0, v0}, Lcom/alipay/pushsdk/AliPushInterface;->startPush(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/pushsdk/c/a/c;->a:Z

    invoke-static {}, Lcom/alipay/pushsdk/c/a/c;->a()V

    return-void
.end method

.method public static setMsptid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/h;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static setPushState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setUtdid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/h;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static showDefaultMsg(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/a;->b()V

    return-void
.end method

.method public static startPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static stopPush(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/a;->a()V

    return-void
.end method
