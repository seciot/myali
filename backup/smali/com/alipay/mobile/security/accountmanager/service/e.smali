.class final Lcom/alipay/mobile/security/accountmanager/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->access$000(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->access$100(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V

    return-void
.end method
