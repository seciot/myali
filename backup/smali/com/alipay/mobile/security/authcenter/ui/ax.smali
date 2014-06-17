.class final Lcom/alipay/mobile/security/authcenter/ui/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ax;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;

    iput p2, p0, Lcom/alipay/mobile/security/authcenter/ui/ax;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ax;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;

    iget v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ax;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity_;I)V

    return-void
.end method
