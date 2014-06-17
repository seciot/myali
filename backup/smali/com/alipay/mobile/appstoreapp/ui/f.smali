.class final Lcom/alipay/mobile/appstoreapp/ui/f;
.super Ljava/lang/Thread;
.source "AppDetailActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->j(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/g;-><init>(Lcom/alipay/mobile/appstoreapp/ui/f;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method
