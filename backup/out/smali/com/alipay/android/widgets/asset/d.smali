.class final Lcom/alipay/android/widgets/asset/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/d;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/d;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;->c(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReciever;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Z)V

    return-void
.end method
