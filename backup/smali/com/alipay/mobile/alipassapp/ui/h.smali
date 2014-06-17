.class final Lcom/alipay/mobile/alipassapp/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->o(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000030"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponDetails"

    const-string/jumbo v8, "remind"

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pass_enddate"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->g(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "b"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    const-class v3, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->s(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->r(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/h;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TRAVEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000021"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "travelItineraryDetails"

    const-string/jumbo v5, "setRemind"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
