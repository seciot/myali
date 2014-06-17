.class final Lcom/alipay/mobile/about/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

.field final synthetic b:Lcom/alipay/mobile/about/service/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/a;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/b;->b:Lcom/alipay/mobile/about/service/a;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/b;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/b;->b:Lcom/alipay/mobile/about/service/a;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/a;->a(Lcom/alipay/mobile/about/service/a;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/b;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;)V

    return-void
.end method
