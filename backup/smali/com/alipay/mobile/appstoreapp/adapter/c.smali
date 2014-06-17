.class final Lcom/alipay/mobile/appstoreapp/adapter/c;
.super Ljava/lang/Object;
.source "FastLoginAppAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/appstoreapp/adapter/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/adapter/b;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->b:Lcom/alipay/mobile/appstoreapp/adapter/b;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->b:Lcom/alipay/mobile/appstoreapp/adapter/b;

    iget-object v1, v1, Lcom/alipay/mobile/appstoreapp/adapter/b;->a:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method
