.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->h(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->i(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->k(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->j(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000038"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000070"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "realNameCheckView"

    const-string/jumbo v7, "accountInfoIndex"

    const-string/jumbo v8, "checkUp"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/e;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=doNameCertified],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
