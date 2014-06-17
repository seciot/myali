.class final Lcom/alipay/mobile/alipassapp/ui/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/ah;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ak;->a:Lcom/alipay/mobile/alipassapp/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ak;->a:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->p()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ak;->a:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->a:Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;->getUri()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "appId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "actionType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ak;->a:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "TRAVEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "20000021"

    :goto_0
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "actionType"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/ak;->a:Lcom/alipay/mobile/alipassapp/ui/ah;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/ah;->b:Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->p(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "20000030"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_1
.end method
