.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$14;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->g(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "mobilePasswordIndex"

    const-string/jumbo v5, "openMobilePayPwd"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
