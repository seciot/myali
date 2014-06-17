.class final Lcom/alipay/mobile/about/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

.field final synthetic b:Lcom/alipay/mobile/about/ui/AboutMainActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/AboutMainActivity_;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/k;->b:Lcom/alipay/mobile/about/ui/AboutMainActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/about/ui/k;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/k;->b:Lcom/alipay/mobile/about/ui/AboutMainActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/k;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/ui/AboutMainActivity_;->a(Lcom/alipay/mobile/about/ui/AboutMainActivity_;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V

    return-void
.end method
