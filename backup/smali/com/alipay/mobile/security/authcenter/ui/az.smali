.class final Lcom/alipay/mobile/security/authcenter/ui/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v3, v3, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v2

    :goto_1
    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v3, v3, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/az;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0
.end method
