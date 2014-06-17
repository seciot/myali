.class public Lcom/alipay/android/app/MspService$AliPayServiceStub;
.super Lcom/alipay/android/app/IAliPay$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/MspService;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/MspService;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->a:Lcom/alipay/android/app/MspService;

    invoke-direct {p0}, Lcom/alipay/android/app/IAliPay$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/MspService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deployFastConnect()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;)V

    return-void
.end method

.method public registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/IRemoteServiceCallback;)V

    return-void
.end method

.method public test()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/MspService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/MspService$AliPayServiceStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/MspService;->b()V

    return-void
.end method
