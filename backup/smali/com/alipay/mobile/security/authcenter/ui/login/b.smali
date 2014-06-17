.class final Lcom/alipay/mobile/security/authcenter/ui/login/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/b;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/b;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Lcom/alipay/mobile/security/authcenter/ui/login/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/b;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/b;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Z)V

    goto :goto_0
.end method
