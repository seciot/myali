.class final Lcom/alipay/android/ipp/binder/a;
.super Lcom/alipay/android/ipp/binder/aidl/IppInterface$Stub;


# instance fields
.field private synthetic a:Lcom/alipay/android/ipp/binder/IppService;


# direct methods
.method constructor <init>(Lcom/alipay/android/ipp/binder/IppService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/binder/a;->a:Lcom/alipay/android/ipp/binder/IppService;

    invoke-direct {p0}, Lcom/alipay/android/ipp/binder/aidl/IppInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/ipp/binder/a;->a:Lcom/alipay/android/ipp/binder/IppService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invoke()justHasBeenKilled:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "justHasBeenKilled"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/alipay/android/ipp/binder/IppService;->access$1(Lcom/alipay/android/ipp/binder/IppService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/ipp/binder/a;->a:Lcom/alipay/android/ipp/binder/IppService;

    const-string/jumbo v2, "justHasBeenKilled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/ipp/binder/IppService;->access$2(Lcom/alipay/android/ipp/binder/IppService;Ljava/lang/String;)V

    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
