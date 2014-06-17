.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$7;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
