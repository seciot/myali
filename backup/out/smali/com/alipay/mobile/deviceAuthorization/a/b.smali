.class final Lcom/alipay/mobile/deviceAuthorization/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/a/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/a/b;->b:Lcom/alipay/mobile/deviceAuthorization/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/a/b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "load image failed,path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/a/b;->b:Lcom/alipay/mobile/deviceAuthorization/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/a/a;->a(Lcom/alipay/mobile/deviceAuthorization/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/a/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/deviceAuthorization/a/c;-><init>(Lcom/alipay/mobile/deviceAuthorization/a/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method
