.class final Lcom/alipay/mobile/security/authcenter/ui/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/bb;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/bb;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/bb;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/bb;->a:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    return-void
.end method
