.class final Lcom/alipay/mobile/security/authcenter/ui/login/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/s;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    const-string/jumbo v2, "tel:95188"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/s;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
