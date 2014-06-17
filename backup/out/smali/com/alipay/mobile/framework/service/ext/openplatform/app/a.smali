.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    #calls: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getImageLoaderService()Lcom/alipay/mobile/framework/service/common/ImageLoaderService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$100(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    #calls: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getImageGroup()Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$000(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;)V

    new-instance v7, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;)V

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    .line 558
    return-void
.end method
