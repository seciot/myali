.class final Lcom/alipay/mobile/security/authcenter/ui/login/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;[B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/am;->b:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/am;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/am;->b:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/am;->a:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment_;[B)V

    return-void
.end method
