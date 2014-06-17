.class Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->registerNFCMsgSender(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->enableForegroundDispatch(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$2;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->disableForegroundDispatch(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
