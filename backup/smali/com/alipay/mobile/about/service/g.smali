.class public final Lcom/alipay/mobile/about/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

.field private b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

.field private c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;Lcom/alipay/mobile/framework/service/common/CacheManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iput-object p1, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/g;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iput-object p3, p0, Lcom/alipay/mobile/about/service/g;->c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/g;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-virtual {v2}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getDownloadURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, -0x2

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getResultStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/about/service/m;->c()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/about/service/g;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->j:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/g;->b:Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-virtual {v2}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getDownloadURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/about/service/g;->c:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-result-object v0

    const-string/jumbo v3, "about_ignore_update_version"

    iget-object v2, p0, Lcom/alipay/mobile/about/service/g;->a:Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    invoke-virtual {v2}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;->getNewestVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    const-string/jumbo v9, "txt"

    move-object v2, v1

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xca
        :pswitch_1
    .end packed-switch
.end method
