.class final Lcom/alipay/mobile/appstoreapp/ui/a;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/b;-><init>(Lcom/alipay/mobile/appstoreapp/ui/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
