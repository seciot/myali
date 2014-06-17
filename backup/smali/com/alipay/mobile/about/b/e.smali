.class public final Lcom/alipay/mobile/about/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/about/b/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/about/b/f;-><init>(Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
