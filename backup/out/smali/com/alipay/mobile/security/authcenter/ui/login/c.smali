.class final Lcom/alipay/mobile/security/authcenter/ui/login/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/c;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/c;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Lcom/alipay/mobile/security/authcenter/ui/login/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/c;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->b(Lcom/alipay/mobile/security/authcenter/ui/login/a;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
