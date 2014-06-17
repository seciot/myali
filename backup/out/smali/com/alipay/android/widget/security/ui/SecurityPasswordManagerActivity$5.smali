.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;Lcom/alipay/mobile/commonui/widget/APEditText;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-boolean p3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6821\u9a8c\u7684\u8d26\u53f7\u5bc6\u7801\u4e3a\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-virtual {v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bF:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->b:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v2

    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity$5;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
