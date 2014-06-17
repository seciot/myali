.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

    iput-boolean p3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "194"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->b:Z

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->i:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$9;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto :goto_0
.end method
