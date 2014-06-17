.class final Lcom/alipay/mobile/security/authcenter/ui/login/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/m;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/m;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->e(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/m;->a:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
