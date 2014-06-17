.class final Lcom/alipay/mobile/security/authcenter/ui/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/ad;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ae;->a:Lcom/alipay/mobile/security/authcenter/ui/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ae;->a:Lcom/alipay/mobile/security/authcenter/ui/ad;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ae;->a:Lcom/alipay/mobile/security/authcenter/ui/ad;

    iget-object v1, v1, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v1, v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->a(Ljava/lang/String;)V

    return-void
.end method
