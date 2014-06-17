.class final Lcom/alipay/mobile/security/authcenter/ui/login/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

.field final synthetic d:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;Lcom/alipay/mobile/framework/service/ext/security/GestureService;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->d:Lcom/alipay/mobile/security/authcenter/ui/login/BaseLoginFragment;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->c:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/o;->c:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    return-void
.end method
