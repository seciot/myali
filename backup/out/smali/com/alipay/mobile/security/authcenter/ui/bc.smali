.class final Lcom/alipay/mobile/security/authcenter/ui/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/bc;->c:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/bc;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/bc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/bc;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/bc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/bc;->c:Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/TaobaoBindingAlipayUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bZ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/bd;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/authcenter/ui/bd;-><init>(Lcom/alipay/mobile/security/authcenter/ui/bc;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
