.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_0
    return-void
.end method
