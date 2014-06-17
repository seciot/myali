.class final Lcom/alipay/mobile/onsitepay/payer/g;
.super Landroid/content/BroadcastReceiver;
.source "BasicFacePayerActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/g;->a:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 480
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u63a5\u6536\u5230\u4e86\u957f\u8fde\u63a5\u670d\u52a1 action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "payload"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/g;->a:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->i()V

    .line 488
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/g;->a:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    const-string/jumbo v3, "pushorder"

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    sget-object v2, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "longlink Receiver error:payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
