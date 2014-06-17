.class final Lcom/alipay/mobile/mobilerechargeapp/activity/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "afterTextChanged s = -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

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
