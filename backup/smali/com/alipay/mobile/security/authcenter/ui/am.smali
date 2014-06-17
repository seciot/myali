.class final Lcom/alipay/mobile/security/authcenter/ui/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/am;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/am;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->c(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/am;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->onBackPressed()V

    return-void
.end method
