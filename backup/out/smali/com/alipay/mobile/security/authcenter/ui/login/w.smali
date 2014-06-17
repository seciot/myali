.class final Lcom/alipay/mobile/security/authcenter/ui/login/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/w;->a:Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/w;->a:Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/LoginActivity;->onBackPressed()V

    return-void
.end method
