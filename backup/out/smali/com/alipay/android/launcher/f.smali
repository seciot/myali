.class final Lcom/alipay/android/launcher/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/launcher/f;->c:Lcom/alipay/android/launcher/TabLauncher;

    iput-object p2, p0, Lcom/alipay/android/launcher/f;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object p3, p0, Lcom/alipay/android/launcher/f;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x3c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/android/launcher/f;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v1, p0, Lcom/alipay/android/launcher/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/launcher/f;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v1, p0, Lcom/alipay/android/launcher/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/launcher/f;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v2, p0, Lcom/alipay/android/launcher/f;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    throw v0
.end method
