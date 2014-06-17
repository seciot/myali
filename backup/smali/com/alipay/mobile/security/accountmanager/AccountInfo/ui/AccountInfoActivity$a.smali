.class final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->p(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->d(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "name certified receive action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->q(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isCertified"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;->r(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/AccountInfoActivity;)V

    goto :goto_0
.end method
