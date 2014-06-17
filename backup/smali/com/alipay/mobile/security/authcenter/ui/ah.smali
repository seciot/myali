.class final Lcom/alipay/mobile/security/authcenter/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method
