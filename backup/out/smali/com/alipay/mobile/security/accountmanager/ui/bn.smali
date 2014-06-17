.class final Lcom/alipay/mobile/security/accountmanager/ui/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/bm;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bn;->a:Lcom/alipay/mobile/security/accountmanager/ui/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string/jumbo v0, "95188"

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bn;->a:Lcom/alipay/mobile/security/accountmanager/ui/bm;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->d:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bn;->a:Lcom/alipay/mobile/security/accountmanager/ui/bm;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/bm;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
