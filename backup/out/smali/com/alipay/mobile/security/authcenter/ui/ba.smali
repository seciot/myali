.class final Lcom/alipay/mobile/security/authcenter/ui/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ba;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ba;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "alipayBindingView"

    const-string/jumbo v8, "registerButton"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ba;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ba;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000009"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
