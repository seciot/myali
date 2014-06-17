.class final Lcom/alipay/android/widgets/asset/rpc/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/a;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/a;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a()V

    return-void
.end method
