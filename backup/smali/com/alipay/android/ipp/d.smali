.class final Lcom/alipay/android/ipp/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alipay/android/ipp/binder/aidl/IppInterface;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/alipay/android/ipp/IppFacade;


# direct methods
.method public constructor <init>(Lcom/alipay/android/ipp/IppFacade;Lcom/alipay/android/ipp/binder/aidl/IppInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/ipp/d;->c:Lcom/alipay/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/ipp/d;->a:Lcom/alipay/android/ipp/binder/aidl/IppInterface;

    iput-object p3, p0, Lcom/alipay/android/ipp/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IppFacade:invokCallBack! justHasBeenKilled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/ipp/d;->c:Lcom/alipay/android/ipp/IppFacade;

    #getter for: Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/android/ipp/IppFacade;->access$5(Lcom/alipay/android/ipp/IppFacade;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "justHasBeenKilled"

    iget-object v2, p0, Lcom/alipay/android/ipp/d;->c:Lcom/alipay/android/ipp/IppFacade;

    #getter for: Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/android/ipp/IppFacade;->access$5(Lcom/alipay/android/ipp/IppFacade;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/ipp/d;->a:Lcom/alipay/android/ipp/binder/aidl/IppInterface;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/android/ipp/binder/aidl/IppInterface;->invoke(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/ipp/d;->c:Lcom/alipay/android/ipp/IppFacade;

    const-string/jumbo v1, "false"

    #setter for: Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/android/ipp/IppFacade;->access$6(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/ipp/IppFacade;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BrotherService has just been killed! To ReStart BrotherService right away!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alipay/android/ipp/d;->c:Lcom/alipay/android/ipp/IppFacade;

    const-string/jumbo v2, "true"

    #setter for: Lcom/alipay/android/ipp/IppFacade;->d:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/android/ipp/IppFacade;->access$6(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/ipp/e;

    iget-object v3, p0, Lcom/alipay/android/ipp/d;->c:Lcom/alipay/android/ipp/IppFacade;

    iget-object v4, p0, Lcom/alipay/android/ipp/d;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/alipay/android/ipp/e;-><init>(Lcom/alipay/android/ipp/IppFacade;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
