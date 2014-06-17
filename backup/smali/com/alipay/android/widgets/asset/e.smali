.class final Lcom/alipay/android/widgets/asset/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/e;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/e;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->d(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8bbe\u7f6eRPC\u4e3a\u53ef\u4ee5\u8bf7\u6c42,doRpc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/e;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->e(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
