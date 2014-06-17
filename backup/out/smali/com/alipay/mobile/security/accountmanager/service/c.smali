.class final Lcom/alipay/mobile/security/accountmanager/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/c;->a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->parseTaobaoSsoToken(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologin/a;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/service/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/service/d;-><init>(Lcom/alipay/mobile/security/accountmanager/service/c;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/ssologin/a;-><init>(Lcom/taobao/android/ssologin/b;Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getParsedNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
