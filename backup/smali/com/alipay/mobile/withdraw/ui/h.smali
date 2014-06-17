.class final Lcom/alipay/mobile/withdraw/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    const-string/jumbo v1, "withdraw"

    const-string/jumbo v2, "confirmButton"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->closeSoftInputWindow(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->d(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/MoneyUtil;->formatMoney(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/withdraw/R$string;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->e(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    new-instance v3, Lcom/alipay/mobile/withdraw/ui/i;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/withdraw/ui/i;-><init>(Lcom/alipay/mobile/withdraw/ui/h;)V

    iget-object v4, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    sget v5, Lcom/alipay/android/phone/wealth/withdraw/R$string;->i:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->show()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    new-instance v3, Lcom/alipay/mobile/withdraw/ui/j;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/withdraw/ui/j;-><init>(Lcom/alipay/mobile/withdraw/ui/h;)V

    iget-object v4, p0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    sget v5, Lcom/alipay/android/phone/wealth/withdraw/R$string;->j:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->show()V

    goto :goto_0
.end method
