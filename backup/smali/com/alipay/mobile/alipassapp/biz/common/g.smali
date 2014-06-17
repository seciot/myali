.class public final Lcom/alipay/mobile/alipassapp/biz/common/g;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/common/h;

    invoke-direct {v1}, Lcom/alipay/mobile/alipassapp/biz/common/h;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
