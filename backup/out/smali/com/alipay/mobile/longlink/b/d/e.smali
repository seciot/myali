.class public Lcom/alipay/mobile/longlink/b/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/longlink/b/d/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/d/e;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/d/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/d/e;->b:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/longlink/b/c/a;)V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/longlink/b/c/f;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/longlink/b/c/f;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/b/c/d;->a(Lcom/alipay/mobile/longlink/b/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/d/e;->b:Lcom/alipay/mobile/longlink/service/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/service/a;->a(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobile/longlink/b/c/a;->d()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "keepLiveTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/longlink/b/a/m;->c(I)V

    const-string/jumbo v0, "heartTimeOut"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/longlink/b/a/m;->a(I)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/d/e;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->n()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/b/d/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() replyTimeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/m;->b()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s, keepLiveTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/m;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/d/e;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->t()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/b/d/e;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/longlink/service/a;->a(Z)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
