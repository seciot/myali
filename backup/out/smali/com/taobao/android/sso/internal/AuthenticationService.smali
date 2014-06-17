.class public Lcom/taobao/android/sso/internal/AuthenticationService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/taobao/android/sso/internal/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->a:Lcom/taobao/android/sso/internal/a;

    invoke-virtual {v0}, Lcom/taobao/android/sso/internal/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    new-instance v0, Lcom/taobao/android/sso/internal/a;

    invoke-direct {v0, p0}, Lcom/taobao/android/sso/internal/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->a:Lcom/taobao/android/sso/internal/a;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->a:Lcom/taobao/android/sso/internal/a;

    return-void
.end method
