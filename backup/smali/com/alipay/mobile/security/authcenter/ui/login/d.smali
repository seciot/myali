.class final Lcom/alipay/mobile/security/authcenter/ui/login/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/d;->a:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/d;->a:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/d;->a:Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;->b(Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment;)Z

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
