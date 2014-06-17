.class public final Lcom/alipay/pushsdk/push/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/pushsdk/push/d/c;


# instance fields
.field private final a:Lcom/alipay/pushsdk/push/j;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/d/d;->a:Lcom/alipay/pushsdk/push/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 3

    new-instance v0, Lcom/alipay/pushsdk/push/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/f;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/a/e;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/a/o;->a(J)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/d;->a:Lcom/alipay/pushsdk/push/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/j;->b(J)V

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "reconnectTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/a/o;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/d;->a:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->c()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
