.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/core/ApplicationManager;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->c:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->a:Lcom/alipay/mobile/core/ApplicationManager;

    iput-object p3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->c:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->a:Lcom/alipay/mobile/core/ApplicationManager;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->b:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V

    return-void
.end method
