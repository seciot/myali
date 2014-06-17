.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "load icon:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed, msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "load icon:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " succeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->createRoundIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;->onLoad(Landroid/graphics/Bitmap;)V

    .line 537
    return-void
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    return-void
.end method
