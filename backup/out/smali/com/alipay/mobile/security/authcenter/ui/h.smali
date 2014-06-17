.class final Lcom/alipay/mobile/security/authcenter/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/h;->b:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/h;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/h;->b:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/h;->a:Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;->a(Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity_;Lcom/alipay/mobile/security/authcenter/ui/CompletePhoneUserInfoActivity$FragId;)V

    return-void
.end method
