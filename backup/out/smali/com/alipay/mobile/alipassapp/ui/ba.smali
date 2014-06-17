.class final Lcom/alipay/mobile/alipassapp/ui/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/az;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/az;[B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ba;->b:Lcom/alipay/mobile/alipassapp/ui/az;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/ba;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ba;->b:Lcom/alipay/mobile/alipassapp/ui/az;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/az;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ba;->a:[B

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ba;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cms query result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "stat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "100"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;-><init>()V

    const-string/jumbo v2, "statDesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "detail"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->setDetail(Ljava/lang/String;)V

    const-string/jumbo v2, "forwardOpt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->setForwardOpt(Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->setUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ba;->b:Lcom/alipay/mobile/alipassapp/ui/az;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/az;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
