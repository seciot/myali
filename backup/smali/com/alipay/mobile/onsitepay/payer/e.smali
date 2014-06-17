.class final Lcom/alipay/mobile/onsitepay/payer/e;
.super Ljava/lang/Object;
.source "BasicFacePayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/e;->c:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/e;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payer/e;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/e;->c:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->f:Z

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/e;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/e;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/f;-><init>(Lcom/alipay/mobile/onsitepay/payer/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method
