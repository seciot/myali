.class final Lcom/alipay/mobile/security/authcenter/ui/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/an;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/an;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/an;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/an;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v2, v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/an;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
