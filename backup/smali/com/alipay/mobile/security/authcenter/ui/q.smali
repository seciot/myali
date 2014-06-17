.class final Lcom/alipay/mobile/security/authcenter/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/q;->b:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/q;->b:Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/q;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;Ljava/lang/String;)V

    return-void
.end method
