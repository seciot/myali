.class public Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;
.super Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$layout;->dialog_six_char_pwd_input:I

    return v0
.end method

.method protected getPwdInputViewId()I
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->close_pwd_input:I

    return v0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->ensureBtn:Landroid/view/View;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
