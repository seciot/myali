.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchListener(ZLandroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bs:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->br:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;

    invoke-direct {v3, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->c:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=switchListener], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e()V

    goto :goto_0
.end method
