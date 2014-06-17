.class final Lcom/alipay/mobile/security/authcenter/ui/login/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/authcenter/ui/login/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/login/a;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Lcom/alipay/mobile/security/authcenter/ui/login/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/login/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/a;->a(Z)V

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
