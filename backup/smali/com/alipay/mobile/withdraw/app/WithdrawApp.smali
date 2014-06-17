.class public Lcom/alipay/mobile/withdraw/app/WithdrawApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "bankId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->a:Ljava/lang/String;

    const-string/jumbo v0, "bankIdLast4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->b:Ljava/lang/String;

    const-string/jumbo v0, "bankMark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBankId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBankIdLast4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBankMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/app/WithdrawApp;->getEntryClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
