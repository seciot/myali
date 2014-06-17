.class final Lcom/alipay/mobile/security/authcenter/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/aa;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ab;->a:Lcom/alipay/mobile/security/authcenter/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ab;->a:Lcom/alipay/mobile/security/authcenter/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ab;->a:Lcom/alipay/mobile/security/authcenter/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/authcenter/ui/aa;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/ab;->a:Lcom/alipay/mobile/security/authcenter/ui/aa;

    iget-object v2, v2, Lcom/alipay/mobile/security/authcenter/ui/aa;->b:Lcom/alipay/mobile/security/authcenter/ui/y;

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/y;->c(Lcom/alipay/mobile/security/authcenter/ui/y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/y;->a(Lcom/alipay/mobile/security/authcenter/ui/y;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
