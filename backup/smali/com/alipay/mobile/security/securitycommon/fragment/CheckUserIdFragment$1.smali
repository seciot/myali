.class Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/FormatValidationUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cw:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
