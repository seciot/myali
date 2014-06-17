.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iput-boolean p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$6;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
