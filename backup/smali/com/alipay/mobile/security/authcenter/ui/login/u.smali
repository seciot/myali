.class final Lcom/alipay/mobile/security/authcenter/ui/login/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/u;->b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iput p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/u;->a:I

    const/16 v1, 0x409

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/u;->b:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;->e()V

    :cond_0
    return-void
.end method
