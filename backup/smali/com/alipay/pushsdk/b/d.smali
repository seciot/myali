.class final Lcom/alipay/pushsdk/b/d;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/alipay/pushsdk/b/c;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alipay/pushsdk/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/alipay/pushsdk/b/d;->a:Lcom/alipay/pushsdk/b/c;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/pushsdk/b/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/b/d;->a:Lcom/alipay/pushsdk/b/c;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/b/c;->a()Lcom/alipay/pushsdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/b/e;->a(Lcom/alipay/pushsdk/b/b;)V

    return-void
.end method
