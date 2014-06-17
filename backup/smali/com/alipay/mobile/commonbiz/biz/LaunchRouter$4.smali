.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->b:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureResult(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->b:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->e(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
