.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iput-boolean p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanAccountCallBack(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;)V
    .locals 0

    return-void
.end method

.method public loginPwdValidateCallBack(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->a:Z

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-boolean v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$8;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    const-string/jumbo v1, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
