.class final Lcom/alipay/mobile/alipassapp/ui/common/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/common/ae;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/ae;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f00\u5173\u7684\u72b6\u6001continueLoop=:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->d(Lcom/alipay/mobile/alipassapp/ui/common/ae;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->e(Lcom/alipay/mobile/alipassapp/ui/common/ae;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->e(Lcom/alipay/mobile/alipassapp/ui/common/ae;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "attachAction"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "DELSEED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->b()Lcom/alipay/mobile/security/otp/OtpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/otp/OtpManager;->deleteSeed()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "action="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget-object v3, Lcom/alipay/mobile/discoverycommon/api/AlipassConstants;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    const-string/jumbo v0, "soundWavePaySuccessPush"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a(Lorg/json/JSONObject;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a(Lcom/alipay/mobile/alipassapp/ui/common/ae;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_1
    const-string/jumbo v0, "getGoodsList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->c:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
