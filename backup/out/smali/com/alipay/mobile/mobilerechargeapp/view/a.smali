.class final Lcom/alipay/mobile/mobilerechargeapp/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/a;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/view/a;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/view/a;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v3}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$000(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->hasFocus()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->onInputTextStatusChanged(ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "APButtonInputAutoC : prefix="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/a;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mTextFormatter:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$100(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/a;->a:Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;

    #getter for: Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mTextFormatter:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->access$100(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;->format(Landroid/text/Editable;)V

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
