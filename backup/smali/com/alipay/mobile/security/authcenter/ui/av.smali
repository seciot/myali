.class final Lcom/alipay/mobile/security/authcenter/ui/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/av;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/av;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/av;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/av;->a:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;Landroid/support/v4/app/Fragment;)V

    return-void
.end method
