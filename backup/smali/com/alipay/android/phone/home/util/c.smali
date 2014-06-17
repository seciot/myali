.class final Lcom/alipay/android/phone/home/util/c;
.super Ljava/lang/Object;
.source "ImageLoadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/alipay/android/phone/home/util/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/util/b;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/c;->c:Lcom/alipay/android/phone/home/util/b;

    iput-object p2, p0, Lcom/alipay/android/phone/home/util/c;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alipay/android/phone/home/util/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/c;->c:Lcom/alipay/android/phone/home/util/b;

    iget-object v0, v0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    iget-boolean v0, v0, Lcom/alipay/android/phone/home/util/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/util/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/c;->c:Lcom/alipay/android/phone/home/util/b;

    iget-object v0, v0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    iget-object v0, v0, Lcom/alipay/android/phone/home/util/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/util/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/c;->c:Lcom/alipay/android/phone/home/util/b;

    iget-object v0, v0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    iget-object v0, v0, Lcom/alipay/android/phone/home/util/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/util/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
