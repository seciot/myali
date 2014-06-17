.class final Lcom/alipay/mobile/onsitepay/payee/s;
.super Ljava/lang/Object;
.source "FacePayeeApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/s;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/s;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payee/s;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/s;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/s;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/s;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/t;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payee/t;-><init>(Lcom/alipay/mobile/onsitepay/payee/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_0
    return-void
.end method
