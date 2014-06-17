.class final Lcom/alipay/mobile/appstoreapp/ui/b;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    iget-object v1, v1, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/b;->a:Lcom/alipay/mobile/appstoreapp/ui/a;

    iget-object v1, v1, Lcom/alipay/mobile/appstoreapp/ui/a;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->f(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method
