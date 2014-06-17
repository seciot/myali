.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;->a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;->a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    iget-object v0, v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->b:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;->a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    iget-object v1, v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4$1;->a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    iget-object v0, v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->b:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->d(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
